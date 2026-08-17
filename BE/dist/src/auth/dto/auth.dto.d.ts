export declare class RegisterDto {
    email: string;
    password: string;
    display_name?: string;
}
export declare class LoginDto {
    email: string;
    password: string;
}
export declare class RefreshDto {
    refresh_token: string;
}
export declare class ChangePasswordDto {
    oldPassword: string;
    newPassword: string;
}
