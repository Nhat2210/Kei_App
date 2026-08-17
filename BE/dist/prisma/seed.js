"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const client_1 = require("@prisma/client");
const prisma = new client_1.PrismaClient();
async function main() {
    console.log('Seeding data...');
    await prisma.exercise_attempts.deleteMany();
    await prisma.exercises.deleteMany();
    await prisma.user_vocabulary_progress.deleteMany();
    await prisma.user_kanji_progress.deleteMany();
    await prisma.user_lesson_progress.deleteMany();
    await prisma.lesson_vocabulary.deleteMany();
    await prisma.lesson_kanji.deleteMany();
    await prisma.lesson_grammar.deleteMany();
    await prisma.lessons.deleteMany();
    await prisma.modules.deleteMany();
    await prisma.levels.deleteMany();
    await prisma.vocabulary.deleteMany();
    await prisma.kanji.deleteMany();
    await prisma.grammar.deleteMany();
    await prisma.achievements.deleteMany();
    await prisma.achievements.createMany({
        data: [
            { code: 'FIRST_BLOOD', name: 'Khởi đầu nan', description: 'Hoàn thành bài học đầu tiên', requirement_type: 'lessons', requirement_value: 1 },
            { code: 'STREAK_3', name: 'Chăm chỉ', description: 'Học liên tục 3 ngày', requirement_type: 'streak', requirement_value: 3 },
            { code: 'XP_100', name: 'Tân binh', description: 'Đạt 100 XP', requirement_type: 'xp', requirement_value: 100 },
        ],
    });
    const n5 = await prisma.levels.create({
        data: {
            code: 'N5',
            name: 'JLPT N5',
            sort_order: 1,
        },
    });
    const mod1 = await prisma.modules.create({
        data: {
            level_id: n5.id,
            name: 'Chào hỏi cơ bản & Giới thiệu bản thân',
            sort_order: 1,
        },
    });
    const mod2 = await prisma.modules.create({
        data: {
            level_id: n5.id,
            name: 'Đồ vật và Địa điểm',
            sort_order: 2,
        },
    });
    const vocab1 = await prisma.vocabulary.create({ data: { word: '私', reading: 'わたし', meaning: 'Tôi' } });
    const vocab2 = await prisma.vocabulary.create({ data: { word: 'あなた', reading: 'あなた', meaning: 'Bạn' } });
    const vocab3 = await prisma.vocabulary.create({ data: { word: '先生', reading: 'せんせい', meaning: 'Giáo viên' } });
    const vocab4 = await prisma.vocabulary.create({ data: { word: '学生', reading: 'がくせい', meaning: 'Học sinh' } });
    const vocab5 = await prisma.vocabulary.create({ data: { word: 'はい', reading: 'はい', meaning: 'Vâng / Dạ' } });
    const kanji1 = await prisma.kanji.create({ data: { character: '私', onyomi: 'シ', kunyomi: 'わたし', meaning: 'Tôi / Tư' } });
    const kanji2 = await prisma.kanji.create({ data: { character: '先', onyomi: 'セン', kunyomi: 'さき', meaning: 'Trước / Tiên' } });
    const kanji3 = await prisma.kanji.create({ data: { character: '生', onyomi: 'セイ', kunyomi: 'い.きる', meaning: 'Sinh / Sống' } });
    const grammar1 = await prisma.grammar.create({ data: { pattern: 'N1 は N2 です', meaning: 'N1 là N2', usage: 'Dùng để khẳng định sự vật, sự việc' } });
    const lesson1 = await prisma.lessons.create({
        data: {
            module_id: mod1.id,
            name: 'Bài 1: N1 は N2 です',
            sort_order: 1,
            xp_reward: 10,
        },
    });
    await prisma.lesson_vocabulary.createMany({
        data: [
            { lesson_id: lesson1.id, vocabulary_id: vocab1.id },
            { lesson_id: lesson1.id, vocabulary_id: vocab2.id },
            { lesson_id: lesson1.id, vocabulary_id: vocab3.id },
            { lesson_id: lesson1.id, vocabulary_id: vocab4.id },
            { lesson_id: lesson1.id, vocabulary_id: vocab5.id },
        ],
    });
    await prisma.lesson_kanji.createMany({
        data: [
            { lesson_id: lesson1.id, kanji_id: kanji1.id },
            { lesson_id: lesson1.id, kanji_id: kanji2.id },
            { lesson_id: lesson1.id, kanji_id: kanji3.id },
        ],
    });
    await prisma.lesson_grammar.create({
        data: { lesson_id: lesson1.id, grammar_id: grammar1.id },
    });
    await prisma.exercises.createMany({
        data: [
            { lesson_id: lesson1.id, question: 'Từ nào có nghĩa là "Giáo viên"? [わたし, せんせい, がくせい, あなた]', correct_answer: 'せんせい', explanation: '先生 (せんせい) nghĩa là Giáo viên' },
            { lesson_id: lesson1.id, question: 'Tôi ___ là học sinh.', correct_answer: 'は', explanation: 'Dùng trợ từ は' },
        ],
    });
    console.log('Seeding complete!');
}
main()
    .catch((e) => {
    console.error(e);
    process.exit(1);
})
    .finally(async () => {
    await prisma.$disconnect();
});
//# sourceMappingURL=seed.js.map