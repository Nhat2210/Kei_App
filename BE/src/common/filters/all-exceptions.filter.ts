import { ExceptionFilter, Catch, ArgumentsHost, HttpException, HttpStatus } from '@nestjs/common';
import { HttpAdapterHost } from '@nestjs/core';

@Catch()
export class AllExceptionsFilter implements ExceptionFilter {
  constructor(private readonly httpAdapterHost: HttpAdapterHost) {}

  catch(exception: unknown, host: ArgumentsHost): void {
    const { httpAdapter } = this.httpAdapterHost;
    const ctx = host.switchToHttp();

    const httpStatus =
      exception instanceof HttpException
        ? exception.getStatus()
        : HttpStatus.INTERNAL_SERVER_ERROR;

    let errorMessage = 'Internal server error';
    let errorDetails = null;

    if (exception instanceof HttpException) {
      const response = exception.getResponse();
      if (typeof response === 'string') {
        errorMessage = response;
      } else if (typeof response === 'object' && response !== null) {
        errorMessage = (response as any).message || errorMessage;
        errorDetails = (response as any).error || null;
      }
    } else if (exception instanceof Error) {
      errorMessage = exception.message;
    }

    const responseBody = {
      success: false,
      data: null,
      error: {
        statusCode: httpStatus,
        message: errorMessage,
        details: errorDetails,
      },
    };

    httpAdapter.reply(ctx.getResponse(), responseBody, httpStatus);
  }
}
