/*
查询全部
*/
SELECT * FROM student;
/*
查询id `student`
*/
SELECT id,NAME FROM student ;
/* nmae列去除重复查询*/
SELECT DISTINCT NAME FROM student; 
/*
查询age  score 在score上加10 并不能改变原来数据库数据
*/
SELECT age,score+10 FROM student;
-- 查询score，在原有基础上加10。进行null值判断  如果是null 替换成0 其别名score
SELECT (IFNULL(score,0)+10) score FROM student;


/*
条件查询

*/
-- 查询age大于等于25数据
SELECT * FROM student WHERE age>=25;
-- 查询name等于张三数据
SELECT * FROM student WHERE NAME="张三";
-- 查询age在23 到27之间的数据
SELECT * FROM student WHERE age>=23 AND age<=27;
SELECT * FROM student WHERE age BETWEEN 23 AND 27;
-- 查询age 为23 25 27 的数据
SELECT * FROM student WHERE age=23 OR age=25 OR age=27;
SELECT * FROM student WHERE age IN(23,25,27);
-- 查询score 为null的数据
SELECT * FROM student WHERE score IS NULL ;
-- 查询score 不为null的数据
SELECT * FROM student WHERE score IS NOT NULL ;

-- 模糊查询
-- 把姓张查询出来 %表示后面任意
SELECT * FROM student WHERE NAME LIKE '张%';
-- 把第二个字是海的数据查询出来 _代表一个任意字符
SELECT * FROM student WHERE NAME LIKE '_海%';
-- 把名字为4个字的数据查询出来
SELECT * FROM student WHERE NAME LIKE '____';
-- 把名字中包含海的数据查询出来
SELECT * FROM student WHERE NAME LIKE '%海%';


/*
	聚合函数
	标准语法：
		SELECT 函数名(列名) FROM 表名 [WHERE 条件];
*/
-- 计算有多少条数据
SELECT COUNT(*) FROM student ;
-- 获取最大 age 
SELECT MAX(age)AS age FROM student;
-- 获取最小年纪age 
SELECT MIN(age)AS age FROM student;
-- 获取所有人的总成绩
SELECT SUM(score) FROM student;
-- 获取性别为女的总成绩
SELECT SUM(score) FROM student WHERE gender='女';
-- 获取性别为男的成绩平均值
SELECT AVG(score)FROM student WHERE gender='男';   


/*
	排序查询
	标准语法：
		SELECT 列名 FROM 表名 [WHERE 条件] ORDER BY 列名1 排序方式1,列名2 排序方式2;
*/
-- 按照年纪升序排序
SELECT * FROM student ORDER BY age ASC;


-- 查询名称中包含"海"的商品信息。按照score降序排序
SELECT * FROM student WHERE NAME LIKE '%海%' ORDER BY score DESC;


-- 按照score升序排序，如果score相同，按照age降序排列
SELECT *FROM student ORDER BY score ASC,age DESC; 

/*
	分组查询
	标准语法：
		SELECT 列名 FROM 表名 [WHERE 条件] GROUP BY 分组列名 [HAVING 分组后条件过滤] [ORDER BY 排序列名 排序方式];
*/
-- 按照学校分组，获取每组学生的总成绩
SELECT school,SUM(score) FROM student GROUP BY school;
-- 对于成绩大于60的学生 按照学校分组，获取每组学生的总成绩
SELECT school,SUM(score) FROM student WHERE score>60 GROUP BY school;
-- 对于成绩大于60的学生 按照学校分组，获取每组学生的总成绩 只显示总成绩大于260的数据
SELECT school ,SUM(score) AS sco FROM student WHERE score>60 GROUP BY school HAVING sco> 260;
-- 对于成绩大于60的学生 按照学校分组，获取每组学生的总成绩 只显示总成绩大于260的数据 按照总成绩降序排序
SELECT school ,SUM(score) AS sco FROM student 
WHERE score>60 
GROUP BY school 
HAVING sco> 260 
ORDER BY sco 
DESC;

/*
	分页查询
	标准语法：
		SELECT 列名 FROM 表名 
		[WHERE 条件] 
		[GROUP BY 分组列名]
		[HAVING 分组后条件过滤] 
		[ORDER BY 排序列名 排序方式] 
		LIMIT 当前页数,每页显示的条数;
	
	LIMIT 当前页数,每页显示的条数;
	公式：当前页数 = (当前页数-1) * 每页显示的条数
*/
-- 每页显示5条数据

-- 第一页 当前页=(1-1)*5
SELECT * FROM student LIMIT 0,5;
-- 第二页
SELECT * FROM student LIMIT 5,5;
-- 第三页
SELECT * FROM student LIMIT 10,5;
-- 第四页
SELECT * FROM student LIMIT 15,5;