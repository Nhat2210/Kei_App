"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.MockTestsModule = void 0;
const common_1 = require("@nestjs/common");
const mock_tests_service_1 = require("./mock-tests.service");
const mock_tests_controller_1 = require("./mock-tests.controller");
let MockTestsModule = class MockTestsModule {
};
exports.MockTestsModule = MockTestsModule;
exports.MockTestsModule = MockTestsModule = __decorate([
    (0, common_1.Module)({
        providers: [mock_tests_service_1.MockTestsService],
        controllers: [mock_tests_controller_1.MockTestsController],
        exports: [mock_tests_service_1.MockTestsService],
    })
], MockTestsModule);
//# sourceMappingURL=mock-tests.module.js.map