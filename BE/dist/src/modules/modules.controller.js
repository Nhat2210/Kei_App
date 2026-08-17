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
exports.ModulesController = void 0;
const common_1 = require("@nestjs/common");
const modules_service_1 = require("./modules.service");
const swagger_1 = require("@nestjs/swagger");
const optional_jwt_auth_guard_1 = require("../auth/guards/optional-jwt-auth.guard");
let ModulesController = class ModulesController {
    modulesService;
    constructor(modulesService) {
        this.modulesService = modulesService;
    }
    findByLevelCode(code, req) {
        return this.modulesService.findByLevelCode(code, req.user?.userId);
    }
};
exports.ModulesController = ModulesController;
__decorate([
    (0, swagger_1.ApiBearerAuth)(),
    (0, common_1.UseGuards)(optional_jwt_auth_guard_1.OptionalJwtAuthGuard),
    (0, swagger_1.ApiOperation)({ summary: 'Get modules by level code' }),
    (0, swagger_1.ApiParam)({ name: 'code', example: 'N5' }),
    (0, common_1.Get)(':code/modules'),
    __param(0, (0, common_1.Param)('code')),
    __param(1, (0, common_1.Request)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [String, Object]),
    __metadata("design:returntype", void 0)
], ModulesController.prototype, "findByLevelCode", null);
exports.ModulesController = ModulesController = __decorate([
    (0, swagger_1.ApiTags)('Modules'),
    (0, common_1.Controller)('levels'),
    __metadata("design:paramtypes", [modules_service_1.ModulesService])
], ModulesController);
//# sourceMappingURL=modules.controller.js.map