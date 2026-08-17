import { LevelsService } from './levels.service';
export declare class LevelsController {
    private readonly levelsService;
    constructor(levelsService: LevelsService);
    findAll(req: any): Promise<{
        progressPercent: number;
        id: string;
        code: string;
        name: string;
        is_active: boolean;
        sort_order: number;
    }[]>;
}
