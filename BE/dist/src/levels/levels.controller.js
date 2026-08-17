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
exports.LevelsController = void 0;
const common_1 = require("@nestjs/common");
const levels_service_1 = require("./levels.service");
const swagger_1 = require("@nestjs/swagger");
const optional_jwt_auth_guard_1 = require("../auth/guards/optional-jwt-auth.guard");
let LevelsController = class LevelsController {
    levelsService;
    constructor(levelsService) {
        this.levelsService = levelsService;
    }
    findAll(req) {
        return this.levelsService.findAll(req.user?.userId);
    }
};
exports.LevelsController = LevelsController;
__decorate([
    (0, swagger_1.ApiBearerAuth)(),
    (0, common_1.UseGuards)(optional_jwt_auth_guard_1.OptionalJwtAuthGuard),
    (0, swagger_1.ApiOperation)({ summary: 'Get all levels with optional user progress' }),
    (0, common_1.Get)(),
    __param(0, (0, common_1.Request)()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [Object]),
    __metadata("design:returntype", void 0)
], LevelsController.prototype, "findAll", null);
exports.LevelsController = LevelsController = __decorate([
    (0, swagger_1.ApiTags)('Levels'),
    (0, common_1.Controller)('levels'),
    __metadata("design:paramtypes", [levels_service_1.LevelsService])
], LevelsController);
//# sourceMappingURL=levels.controller.js.map