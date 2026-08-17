import { LessonsService } from './lessons.service';
export declare class LessonsController {
    private readonly lessonsService;
    constructor(lessonsService: LessonsService);
    findByModuleId(moduleId: string): Promise<{
        id: string;
        name: string;
        sort_order: number;
        xp_reward: number;
        module_id: string;
    }[]>;
    findOne(id: string): Promise<{
        vocabulary: {
            id: string;
            word: string;
            meaning: string;
            reading: string;
        }[];
        kanji: {
            id: string;
            meaning: string;
            character: string;
            onyomi: string | null;
            kunyomi: string | null;
        }[];
        grammar: {
            id: string;
            meaning: string;
            pattern: string;
            usage: string | null;
        }[];
        id: string;
        name: string;
        sort_order: number;
        xp_reward: number;
        module_id: string;
    }>;
}
