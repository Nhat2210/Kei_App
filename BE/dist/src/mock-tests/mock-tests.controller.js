"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var __param = (this && this.__param) || function (paramIndex, decorator) {
    return function (target, key) { decorator(target, key, paramIndex); }
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.MockTestsController = void 0;
const common_1 = require("@nestjs/common");
const mock_tests_service_1 = require("./mock-tests.service");
const swagger_1 = require("@nestjs/swagger");
const optional_jwt_auth_guard_1 = require("../auth/guards/optional-jwt-auth.guard");
let MockTestsController = class MockTestsController {
    mockTestsService;
    constructor(mockTestsService) {
        this.mockTestsService = mockTestsService;
    }
    getMockTests(code) {
        return this.mockTestsService.getMockTestsByLevelCode(code);
    }
};
exports.MockTestsController = MockTestsController;
__decorate([
    (0, swagger_1.ApiBearerAuth)(),
    (0, common_1.UseGuards)(optional_jwt_auth_guard_1.OptionalJwtAuthGuard),
    (0, swagger_1.ApiOperation)({ summary: 'Get mock tests for a specific level' }),
    (0, swagger_1.ApiParam)({ name: 'code', example: 'N5' }),
    (0, common_1.Get)(':code/mock-tests'),
    __param(0, (0, common_1.Param)('code')),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String]),
    __metadata("design:returntype", void 0)
], MockTestsController.prototype, "getMockTests", null);
exports.MockTestsController = MockTestsController = __decorate([
    (0, swagger_1.ApiTags)('Mock Tests'),
    (0, common_1.Controller)('levels'),
    __metadata("design:paramtypes", [mock_tests_service_1.MockTestsService])
], MockTestsController);
//# sourceMappingURL=mock-tests.controller.js.map