drop table if exists qms_question;

/*==============================================================*/
/* Table: qms_question                                          */
/*==============================================================*/
create table qms_question
(
   id                   bigint not null auto_increment comment 'id',
   title                varchar(500) comment '题目标题',
   answer               varchar(15000) comment '题目解答',
   level                tinyint comment '题目难度等级',
   display_order        int comment '排序',
   sub_title            varchar(500) comment '副标题',
   type                 bigint comment '题目类型',
   enable               tinyint comment '是否显示',
   del_flag             tinyint(1) DEFAULT 0 COMMENT '删除标记（0-正常，1-删除）',
   create_time          datetime default CURRENT_TIMESTAMP comment '创建时间',
   update_time          datetime default CURRENT_TIMESTAMP comment '更新时间',
   primary key (id)
);

drop table if exists qms_type;

drop table if exists qms_type;

/*==============================================================*/
/* Table: qms_type                                              */
/*==============================================================*/
create table qms_type
(
   id                   bigint not null auto_increment comment 'id',
   type                 char(64) comment '类型名称',
   comments             char(64) comment '备注',
   logo_url             varchar(500) comment '类型logo路径',
   del_flag             tinyint(1) DEFAULT 0 COMMENT '删除标记（0-正常，1-删除）',
   create_time          datetime default CURRENT_TIMESTAMP comment '创建时间',
   update_time          datetime default CURRENT_TIMESTAMP comment '更新时间',
   primary key (id)
);

alter table qms_type comment '题目-题目类型表';

