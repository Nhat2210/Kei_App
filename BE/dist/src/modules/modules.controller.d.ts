import { ModulesService } from './modules.service';
export declare class ModulesController {
    private readonly modulesService;
    constructor(modulesService: ModulesService);
    findByLevelCode(code: string, req: any): Promise<any[]>;
}
