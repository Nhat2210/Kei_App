import { MockTestsService } from './mock-tests.service';
export declare class MockTestsController {
    private readonly mockTestsService;
    constructor(mockTestsService: MockTestsService);
    getMockTests(code: string): Promise<{
        id: string;
        level_id: string;
        title: string;
    }[]>;
}
