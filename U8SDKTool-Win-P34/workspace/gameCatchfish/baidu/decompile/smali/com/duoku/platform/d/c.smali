.class public Lcom/duoku/platform/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/d/c$a;
    }
.end annotation


# static fields
.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static g:Lcom/duoku/platform/d/c;


# instance fields
.field private a:Lcom/duoku/platform/d/c$a;

.field private h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    new-array v0, v6, [Ljava/lang/String;

    .line 66
    const-string v1, "logintype"

    aput-object v1, v0, v3

    const-string v1, "registtype"

    aput-object v1, v0, v4

    const-string v1, "username"

    aput-object v1, v0, v5

    .line 64
    sput-object v0, Lcom/duoku/platform/d/c;->e:[Ljava/lang/String;

    .line 97
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 98
    const-string v1, "bduserid"

    aput-object v1, v0, v3

    const-string v1, "dkuserid"

    aput-object v1, v0, v4

    const-string v1, "username"

    aput-object v1, v0, v5

    const-string v1, "sessionid"

    aput-object v1, v0, v6

    const-string v1, "bduss"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "bdptoken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "baidu91userid"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "baidu91token"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "logintype"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 99
    const-string v2, "sessionid91"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ramseckey91"

    aput-object v2, v0, v1

    .line 96
    sput-object v0, Lcom/duoku/platform/d/c;->f:[Ljava/lang/String;

    .line 108
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    .line 109
    const-string v1, "bduserid"

    aput-object v1, v0, v3

    .line 110
    const-string v1, "username"

    aput-object v1, v0, v4

    .line 111
    const-string v1, "sessionid"

    aput-object v1, v0, v5

    .line 112
    const-string v1, "phonenumber"

    aput-object v1, v0, v6

    .line 113
    const-string v1, "kubi"

    aput-object v1, v0, v7

    .line 114
    const/4 v1, 0x5

    const-string v2, "registtype"

    aput-object v2, v0, v1

    .line 115
    const/4 v1, 0x6

    const-string v2, "logouttime"

    aput-object v2, v0, v1

    .line 116
    const/4 v1, 0x7

    const-string v2, "userstate"

    aput-object v2, v0, v1

    .line 117
    const/16 v1, 0x8

    const-string v2, "logintype"

    aput-object v2, v0, v1

    .line 118
    const/16 v1, 0x9

    const-string v2, "loginmarktime"

    aput-object v2, v0, v1

    .line 119
    const/16 v1, 0xa

    const-string v2, "dkuserid"

    aput-object v2, v0, v1

    .line 120
    const/16 v1, 0xb

    const-string v2, "bduss"

    aput-object v2, v0, v1

    .line 121
    const/16 v1, 0xc

    const-string v2, "bdptoken"

    aput-object v2, v0, v1

    .line 122
    const/16 v1, 0xd

    const-string v2, "baidu91userid"

    aput-object v2, v0, v1

    .line 123
    const/16 v1, 0xe

    const-string v2, "baidu91token"

    aput-object v2, v0, v1

    .line 124
    const/16 v1, 0xf

    const-string v2, "sessionid91"

    aput-object v2, v0, v1

    .line 125
    const/16 v1, 0x10

    const-string v2, "ramseckey91"

    aput-object v2, v0, v1

    .line 126
    const/16 v1, 0x11

    const-string v2, "d1"

    aput-object v2, v0, v1

    .line 127
    const/16 v1, 0x12

    const-string v2, "d2"

    aput-object v2, v0, v1

    .line 128
    const/16 v1, 0x13

    const-string v2, "d3"

    aput-object v2, v0, v1

    .line 129
    sput-object v0, Lcom/duoku/platform/d/c;->b:[Ljava/lang/String;

    .line 132
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    .line 133
    const-string v1, "bduserid"

    aput-object v1, v0, v3

    .line 134
    const-string v1, "username"

    aput-object v1, v0, v4

    .line 135
    const-string v1, "sessionid"

    aput-object v1, v0, v5

    .line 136
    const-string v1, "phonenumber"

    aput-object v1, v0, v6

    .line 137
    const-string v1, "kubi"

    aput-object v1, v0, v7

    .line 138
    const/4 v1, 0x5

    const-string v2, "registtype"

    aput-object v2, v0, v1

    .line 139
    const/4 v1, 0x6

    const-string v2, "logouttime"

    aput-object v2, v0, v1

    .line 140
    const/4 v1, 0x7

    const-string v2, "userstate"

    aput-object v2, v0, v1

    .line 141
    const/16 v1, 0x8

    const-string v2, "logintype"

    aput-object v2, v0, v1

    .line 142
    const/16 v1, 0x9

    const-string v2, "loginmarktime"

    aput-object v2, v0, v1

    .line 143
    const/16 v1, 0xa

    const-string v2, "dkuserid"

    aput-object v2, v0, v1

    .line 144
    const/16 v1, 0xb

    const-string v2, "bduss"

    aput-object v2, v0, v1

    .line 145
    const/16 v1, 0xc

    const-string v2, "bdptoken"

    aput-object v2, v0, v1

    .line 146
    const/16 v1, 0xd

    const-string v2, "baidu91userid"

    aput-object v2, v0, v1

    .line 147
    const/16 v1, 0xe

    const-string v2, "baidu91token"

    aput-object v2, v0, v1

    .line 148
    sput-object v0, Lcom/duoku/platform/d/c;->d:[Ljava/lang/String;

    .line 151
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    .line 152
    const-string v1, "userid"

    aput-object v1, v0, v3

    .line 153
    const-string v1, "username"

    aput-object v1, v0, v4

    .line 154
    const-string v1, "sessionid"

    aput-object v1, v0, v5

    .line 155
    const-string v1, "phonenumber"

    aput-object v1, v0, v6

    .line 156
    const-string v1, "kubi"

    aput-object v1, v0, v7

    .line 157
    const/4 v1, 0x5

    const-string v2, "registtype"

    aput-object v2, v0, v1

    .line 158
    const/4 v1, 0x6

    const-string v2, "logouttime"

    aput-object v2, v0, v1

    .line 159
    const/4 v1, 0x7

    const-string v2, "userstate"

    aput-object v2, v0, v1

    .line 160
    const/16 v1, 0x8

    const-string v2, "logintype"

    aput-object v2, v0, v1

    .line 161
    const/16 v1, 0x9

    const-string v2, "d1"

    aput-object v2, v0, v1

    .line 162
    const/16 v1, 0xa

    const-string v2, "d2"

    aput-object v2, v0, v1

    .line 163
    const/16 v1, 0xb

    const-string v2, "d3"

    aput-object v2, v0, v1

    .line 164
    const/16 v1, 0xc

    const-string v2, "loginmarktime"

    aput-object v2, v0, v1

    .line 165
    sput-object v0, Lcom/duoku/platform/d/c;->c:[Ljava/lang/String;

    .line 172
    const/4 v0, 0x0

    sput-object v0, Lcom/duoku/platform/d/c;->g:Lcom/duoku/platform/d/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/d/c;->a:Lcom/duoku/platform/d/c$a;

    .line 186
    iput-object p1, p0, Lcom/duoku/platform/d/c;->h:Landroid/content/Context;

    .line 187
    new-instance v0, Lcom/duoku/platform/d/c$a;

    invoke-direct {v0, p0, p1}, Lcom/duoku/platform/d/c$a;-><init>(Lcom/duoku/platform/d/c;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/d/c;->a:Lcom/duoku/platform/d/c$a;

    .line 188
    return-void
.end method

.method private declared-synchronized a(Lcom/duoku/platform/bean/f;Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 14

    .prologue
    const-wide/16 v8, 0x0

    .line 284
    monitor-enter p0

    const/4 v10, 0x0

    .line 286
    :try_start_4
    invoke-virtual {p1}, Lcom/duoku/platform/bean/f;->h()Ljava/lang/String;

    move-result-object v0

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dkuserid=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_102

    move-result-object v3

    .line 291
    :try_start_1d
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 292
    const-string v1, "dk_user"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 295
    const-string v0, "INSERT INTO dk_user (bduserid, username, sessionid, phonenumber, kubi, registtype, logouttime, userstate, logintype, loginmarktime, dkuserid, bduss, bdptoken, baidu91userid, baidu91token,sessionid91,ramseckey91) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 296
    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/duoku/platform/bean/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/duoku/platform/d/a;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 297
    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/duoku/platform/bean/f;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/duoku/platform/d/a;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 298
    const/4 v0, 0x3

    invoke-virtual {p1}, Lcom/duoku/platform/bean/f;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/duoku/platform/d/a;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 299
    const/4 v0, 0x4

    invoke-virtual {p1}, Lcom/duoku/platform/bean/f;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/duoku/platform/d/a;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 300
    const/4 v0, 0x5

    invoke-virtual {p1}, Lcom/duoku/platform/bean/f;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/duoku/platform/d/a;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 301
    const/4 v0, 0x6

    invoke-virtual {p1}, Lcom/duoku/platform/bean/f;->p()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v0, v4, v5}, Lcom/duoku/platform/d/a;->a(Landroid/database/sqlite/SQLiteStatement;IJ)V

    .line 302
    const/4 v3, 0x7

    invoke-virtual {p1}, Lcom/duoku/platform/bean/f;->m()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_f3

    invoke-virtual {p1}, Lcom/duoku/platform/bean/f;->m()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_71
    invoke-static {v2, v3, v0, v1}, Lcom/duoku/platform/d/a;->a(Landroid/database/sqlite/SQLiteStatement;IJ)V

    .line 303
    const/16 v0, 0x8

    invoke-virtual {p1}, Lcom/duoku/platform/bean/f;->n()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v0, v4, v5}, Lcom/duoku/platform/d/a;->a(Landroid/database/sqlite/SQLiteStatement;IJ)V

    .line 304
    const/16 v0, 0x9

    invoke-virtual {p1}, Lcom/duoku/platform/bean/f;->o()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v0, v4, v5}, Lcom/duoku/platform/d/a;->a(Landroid/database/sqlite/SQLiteStatement;IJ)V

    .line 305
    const/16 v3, 0xa

    invoke-virtual {p1}, Lcom/duoku/platform/bean/f;->q()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_f6

    invoke-virtual {p1}, Lcom/duoku/platform/bean/f;->q()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_98
    invoke-static {v2, v3, v0, v1}, Lcom/duoku/platform/d/a;->a(Landroid/database/sqlite/SQLiteStatement;IJ)V

    .line 306
    const/16 v0, 0xb

    invoke-virtual {p1}, Lcom/duoku/platform/bean/f;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/duoku/platform/d/a;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 307
    const/16 v0, 0xc

    invoke-virtual {p1}, Lcom/duoku/platform/bean/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/duoku/platform/d/a;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 308
    const/16 v0, 0xd

    invoke-virtual {p1}, Lcom/duoku/platform/bean/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/duoku/platform/d/a;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 309
    const/16 v0, 0xe

    invoke-virtual {p1}, Lcom/duoku/platform/bean/f;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/duoku/platform/d/a;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 310
    const/16 v0, 0xf

    invoke-virtual {p1}, Lcom/duoku/platform/bean/f;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/duoku/platform/d/a;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 313
    invoke-virtual {p1}, Lcom/duoku/platform/bean/f;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d7

    .line 315
    const/16 v0, 0x10

    invoke-virtual {p1}, Lcom/duoku/platform/bean/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/duoku/platform/d/a;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 317
    :cond_d7
    invoke-virtual {p1}, Lcom/duoku/platform/bean/f;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e6

    .line 319
    const/16 v0, 0x11

    invoke-virtual {p1}, Lcom/duoku/platform/bean/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/duoku/platform/d/a;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 321
    :cond_e6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 323
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_ec} :catch_f8
    .catchall {:try_start_1d .. :try_end_ec} :catchall_105

    .line 331
    if-eqz p2, :cond_f1

    .line 333
    :try_start_ee
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_f1
    .catchall {:try_start_ee .. :try_end_f1} :catchall_102

    .line 336
    :cond_f1
    :goto_f1
    monitor-exit p0

    return v10

    :cond_f3
    move-wide v0, v8

    .line 302
    goto/16 :goto_71

    :cond_f6
    move-wide v0, v8

    .line 305
    goto :goto_98

    .line 325
    :catch_f8
    move-exception v0

    .line 327
    :try_start_f9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_fc
    .catchall {:try_start_f9 .. :try_end_fc} :catchall_105

    .line 331
    if-eqz p2, :cond_f1

    .line 333
    :try_start_fe
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_101
    .catchall {:try_start_fe .. :try_end_101} :catchall_102

    goto :goto_f1

    .line 284
    :catchall_102
    move-exception v0

    monitor-exit p0

    throw v0

    .line 330
    :catchall_105
    move-exception v0

    .line 331
    if-eqz p2, :cond_10b

    .line 333
    :try_start_108
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 335
    :cond_10b
    throw v0
    :try_end_10c
    .catchall {:try_start_108 .. :try_end_10c} :catchall_102
.end method

.method private a(Landroid/database/Cursor;I)Lcom/duoku/platform/bean/f;
    .registers 8

    .prologue
    const/4 v4, 0x3

    .line 419
    new-instance v0, Lcom/duoku/platform/bean/f;

    invoke-direct {v0}, Lcom/duoku/platform/bean/f;-><init>()V

    .line 420
    packed-switch p2, :pswitch_data_174

    .line 494
    :goto_9
    return-object v0

    .line 424
    :pswitch_a
    const-string v1, "userid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/bean/f;->f(Ljava/lang/String;)V

    .line 425
    const-string v1, "username"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/bean/f;->g(Ljava/lang/String;)V

    .line 426
    const-string v1, "sessionid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/bean/f;->j(Ljava/lang/String;)V

    .line 427
    const-string v1, "phonenumber"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/bean/f;->h(Ljava/lang/String;)V

    .line 428
    const-string v1, "kubi"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/bean/f;->i(Ljava/lang/String;)V

    .line 429
    const-string v1, "registtype"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/bean/f;->c(I)V

    .line 430
    const-string v1, "logouttime"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 431
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 432
    invoke-virtual {v0, v1}, Lcom/duoku/platform/bean/f;->a(Ljava/util/Date;)V

    .line 433
    const-string v1, "userstate"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/bean/f;->a(I)V

    .line 436
    const-string v1, "logintype"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 438
    const/4 v2, 0x2

    if-ne v1, v2, :cond_9b

    .line 441
    invoke-virtual {v0, v4}, Lcom/duoku/platform/bean/f;->b(I)V

    .line 454
    :goto_87
    const-string v1, "loginmarktime"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 455
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 456
    invoke-virtual {v0, v1}, Lcom/duoku/platform/bean/f;->b(Ljava/util/Date;)V

    goto/16 :goto_9

    .line 443
    :cond_9b
    if-ne v1, v4, :cond_a0

    .line 446
    const/4 v0, 0x0

    goto/16 :goto_9

    .line 450
    :cond_a0
    invoke-virtual {v0, v1}, Lcom/duoku/platform/bean/f;->b(I)V

    goto :goto_87

    .line 462
    :pswitch_a4
    const-string v1, "bduserid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/bean/f;->e(Ljava/lang/String;)V

    .line 463
    const-string v1, "username"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/bean/f;->g(Ljava/lang/String;)V

    .line 464
    const-string v1, "sessionid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/bean/f;->j(Ljava/lang/String;)V

    .line 465
    const-string v1, "phonenumber"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/bean/f;->h(Ljava/lang/String;)V

    .line 466
    const-string v1, "kubi"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/bean/f;->i(Ljava/lang/String;)V

    .line 467
    const-string v1, "registtype"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/bean/f;->c(I)V

    .line 469
    const-string v1, "logouttime"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 470
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 471
    invoke-virtual {v0, v1}, Lcom/duoku/platform/bean/f;->a(Ljava/util/Date;)V

    .line 473
    const-string v1, "userstate"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/bean/f;->a(I)V

    .line 474
    const-string v1, "logintype"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/bean/f;->b(I)V

    .line 476
    const-string v1, "loginmarktime"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 477
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 478
    invoke-virtual {v0, v1}, Lcom/duoku/platform/bean/f;->b(Ljava/util/Date;)V

    .line 480
    const-string v1, "dkuserid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/bean/f;->f(Ljava/lang/String;)V

    .line 481
    const-string v1, "bduss"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/bean/f;->a(Ljava/lang/String;)V

    .line 482
    const-string v1, "bdptoken"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/bean/f;->b(Ljava/lang/String;)V

    .line 483
    const-string v1, "baidu91userid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/bean/f;->c(Ljava/lang/String;)V

    .line 484
    const-string v1, "baidu91token"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/bean/f;->d(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 420
    nop

    :pswitch_data_174
    .packed-switch 0x2
        :pswitch_a
        :pswitch_a4
    .end packed-switch
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/duoku/platform/d/c;
    .registers 3

    .prologue
    .line 198
    const-class v1, Lcom/duoku/platform/d/c;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/duoku/platform/d/c;->g:Lcom/duoku/platform/d/c;

    if-nez v0, :cond_e

    .line 200
    new-instance v0, Lcom/duoku/platform/d/c;

    invoke-direct {v0, p0}, Lcom/duoku/platform/d/c;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_11

    .line 202
    :goto_c
    monitor-exit v1

    return-object v0

    :cond_e
    :try_start_e
    sget-object v0, Lcom/duoku/platform/d/c;->g:Lcom/duoku/platform/d/c;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_11

    goto :goto_c

    .line 198
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/bean/f;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 348
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 353
    packed-switch p2, :pswitch_data_78

    move-object v1, v8

    .line 402
    :cond_a
    :goto_a
    if-eqz v1, :cond_f

    .line 404
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 407
    :cond_f
    return-object v9

    .line 357
    :pswitch_10
    :try_start_10
    const-string v1, "dk_user"

    sget-object v2, Lcom/duoku/platform/d/c;->c:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "loginmarktime DESC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1e} :catch_60
    .catchall {:try_start_10 .. :try_end_1e} :catchall_73

    move-result-object v1

    .line 358
    if-eqz v1, :cond_a

    :try_start_21
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 362
    :cond_27
    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lcom/duoku/platform/d/c;->a(Landroid/database/Cursor;I)Lcom/duoku/platform/bean/f;

    move-result-object v0

    .line 363
    if-eqz v0, :cond_31

    .line 365
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_31
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_34} :catch_76
    .catchall {:try_start_21 .. :try_end_34} :catchall_6c

    move-result v0

    if-nez v0, :cond_27

    goto :goto_a

    .line 375
    :pswitch_38
    :try_start_38
    const-string v1, "dk_user"

    sget-object v2, Lcom/duoku/platform/d/c;->d:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "loginmarktime DESC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_46} :catch_60
    .catchall {:try_start_38 .. :try_end_46} :catchall_73

    move-result-object v1

    .line 376
    if-eqz v1, :cond_a

    :try_start_49
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 380
    :cond_4f
    const/4 v0, 0x3

    invoke-direct {p0, v1, v0}, Lcom/duoku/platform/d/c;->a(Landroid/database/Cursor;I)Lcom/duoku/platform/bean/f;

    move-result-object v0

    .line 381
    if-eqz v0, :cond_59

    .line 383
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_59
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5c} :catch_76
    .catchall {:try_start_49 .. :try_end_5c} :catchall_6c

    move-result v0

    if-nez v0, :cond_4f

    goto :goto_a

    .line 396
    :catch_60
    move-exception v0

    move-object v1, v8

    .line 398
    :goto_62
    :try_start_62
    new-instance v2, Landroid/database/sqlite/SQLiteException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_6c

    .line 401
    :catchall_6c
    move-exception v0

    .line 402
    :goto_6d
    if-eqz v1, :cond_72

    .line 404
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 406
    :cond_72
    throw v0

    .line 401
    :catchall_73
    move-exception v0

    move-object v1, v8

    goto :goto_6d

    .line 396
    :catch_76
    move-exception v0

    goto :goto_62

    .line 353
    :pswitch_data_78
    .packed-switch 0x2
        :pswitch_10
        :pswitch_38
    .end packed-switch
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6

    .prologue
    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    packed-switch p2, :pswitch_data_44

    .line 253
    :goto_8
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 256
    :try_start_b
    const-string v1, "DROP TABLE IF EXISTS dk_user"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 257
    const-string v1, "create table dk_user(_id INTEGER PRIMARY KEY,bduserid TEXT,username TEXT,sessionid TEXT,phonenumber TEXT,kubi TEXT,registtype INTEGER,logouttime DOUBLE,userstate INTEGER,logintype INTEGER,loginmarktime DOUBLE,dkuserid TEXT,bduss TEXT,bdptoken TEXT,baidu91userid TEXT,baidu91token TEXT,sessionid91 TEXT,ramseckey91 TEXT,d1 TEXT,d2 TEXT,d3 TEXT)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_18
    .catch Landroid/database/SQLException; {:try_start_b .. :try_end_18} :catch_32
    .catchall {:try_start_b .. :try_end_18} :catchall_34

    .line 266
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 270
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_39

    .line 274
    return-void

    .line 241
    :pswitch_26
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/duoku/platform/d/c;->a(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_8

    .line 246
    :pswitch_2c
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/duoku/platform/d/c;->a(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_8

    .line 260
    :catch_32
    move-exception v0

    .line 262
    :try_start_33
    throw v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    .line 265
    :catchall_34
    move-exception v0

    .line 266
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 267
    throw v0

    .line 270
    :cond_39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/f;

    .line 272
    invoke-direct {p0, v0, p1}, Lcom/duoku/platform/d/c;->a(Lcom/duoku/platform/bean/f;Landroid/database/sqlite/SQLiteDatabase;)I

    goto :goto_1f

    .line 237
    nop

    :pswitch_data_44
    .packed-switch 0x2
        :pswitch_26
        :pswitch_2c
    .end packed-switch
.end method

.method static synthetic a(Lcom/duoku/platform/d/c;Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .prologue
    .line 232
    invoke-direct {p0, p1, p2, p3}, Lcom/duoku/platform/d/c;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method private declared-synchronized b()V
    .registers 2

    .prologue
    .line 618
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/duoku/platform/d/c;->a:Lcom/duoku/platform/d/c$a;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 619
    monitor-exit p0

    return-void

    .line 618
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Lcom/duoku/platform/bean/SynLoginUserInfo;
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 499
    .line 507
    :try_start_1
    iget-object v0, p0, Lcom/duoku/platform/d/c;->a:Lcom/duoku/platform/d/c$a;

    invoke-virtual {v0}, Lcom/duoku/platform/d/c$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_182
    .catchall {:try_start_1 .. :try_end_6} :catchall_17a

    move-result-object v0

    .line 508
    :try_start_7
    const-string v1, "dk_user"

    sget-object v2, Lcom/duoku/platform/d/c;->f:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "loginmarktime DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_185
    .catchall {:try_start_7 .. :try_end_14} :catchall_17d

    move-result-object v2

    .line 509
    if-eqz v2, :cond_12e

    :try_start_17
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_12e

    .line 511
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 514
    new-instance v8, Lcom/duoku/platform/bean/SynLoginUserInfo;

    invoke-direct {v8}, Lcom/duoku/platform/bean/SynLoginUserInfo;-><init>()V

    .line 515
    const-string v1, "bduserid"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setBduid(Ljava/lang/String;)V

    .line 516
    const-string v1, "dkuserid"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setDkuid(Ljava/lang/String;)V

    .line 517
    const-string v1, "sessionid"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setDktoken(Ljava/lang/String;)V

    .line 518
    const-string v1, "baidu91userid"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setUid_91(Ljava/lang/String;)V

    .line 519
    const-string v1, "baidu91token"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setToken_91(Ljava/lang/String;)V

    .line 520
    const-string v1, "sessionid91"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setSessionid_91(Ljava/lang/String;)V

    .line 521
    const-string v1, "ramseckey91"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setRamseckey_91(Ljava/lang/String;)V

    .line 522
    const-string v1, "username"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setUsername(Ljava/lang/String;)V

    .line 523
    const-string v1, "logintype"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 524
    packed-switch v1, :pswitch_data_18c

    .line 548
    :goto_9a
    new-instance v1, Lcom/duoku/platform/d/b;

    invoke-direct {v1}, Lcom/duoku/platform/d/b;-><init>()V

    .line 550
    const-string v3, "bduserid"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/duoku/platform/d/b;->c(Ljava/lang/String;)V

    .line 551
    const-string v3, "dkuserid"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/duoku/platform/d/b;->d(Ljava/lang/String;)V

    .line 552
    const-string v3, "username"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/duoku/platform/d/b;->a(Ljava/lang/String;)V

    .line 553
    const-string v3, "sessionid"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/duoku/platform/d/b;->b(Ljava/lang/String;)V

    .line 554
    const-string v3, "bduss"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/duoku/platform/d/b;->e(Ljava/lang/String;)V

    .line 555
    const-string v3, "bdptoken"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/duoku/platform/d/b;->f(Ljava/lang/String;)V

    .line 556
    const-string v3, "baidu91userid"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/duoku/platform/d/b;->g(Ljava/lang/String;)V

    .line 557
    const-string v3, "baidu91token"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/duoku/platform/d/b;->h(Ljava/lang/String;)V

    .line 558
    const-string v3, "logintype"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/duoku/platform/d/b;->a(I)V

    .line 560
    const-string v3, "sessionid91"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/duoku/platform/d/b;->g(Ljava/lang/String;)V

    .line 561
    const-string v3, "ramseckey91"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/duoku/platform/d/b;->h(Ljava/lang/String;)V
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_12e} :catch_143
    .catchall {:try_start_17 .. :try_end_12e} :catchall_168

    .line 570
    :cond_12e
    if-eqz v0, :cond_133

    .line 572
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 574
    :cond_133
    if-eqz v2, :cond_138

    .line 576
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 578
    :cond_138
    invoke-direct {p0}, Lcom/duoku/platform/d/c;->b()V

    .line 580
    return-object v8

    .line 528
    :pswitch_13c
    :try_start_13c
    sget-object v1, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;->USER_LOGINTYPE_VISITOR:Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    invoke-virtual {v8, v1}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setLogintype(Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;)V
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_141} :catch_143
    .catchall {:try_start_13c .. :try_end_141} :catchall_168

    goto/16 :goto_9a

    .line 564
    :catch_143
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v2

    .line 566
    :goto_147
    :try_start_147
    new-instance v2, Landroid/database/sqlite/SQLiteException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_151
    .catchall {:try_start_147 .. :try_end_151} :catchall_151

    .line 569
    :catchall_151
    move-exception v0

    move-object v2, v1

    .line 570
    :goto_153
    if-eqz v8, :cond_158

    .line 572
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 574
    :cond_158
    if-eqz v2, :cond_15d

    .line 576
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 578
    :cond_15d
    invoke-direct {p0}, Lcom/duoku/platform/d/c;->b()V

    .line 579
    throw v0

    .line 533
    :pswitch_161
    :try_start_161
    sget-object v1, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;->USER_LOGINTYPE_BAIDU:Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    invoke-virtual {v8, v1}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setLogintype(Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;)V

    goto/16 :goto_9a

    .line 569
    :catchall_168
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_153

    .line 538
    :pswitch_16c
    sget-object v1, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;->USER_LOGINTYPE_DUOKU:Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    invoke-virtual {v8, v1}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setLogintype(Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;)V

    goto/16 :goto_9a

    .line 543
    :pswitch_173
    sget-object v1, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;->USER_LOGINTYPE_91:Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    invoke-virtual {v8, v1}, Lcom/duoku/platform/bean/SynLoginUserInfo;->setLogintype(Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;)V
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_178} :catch_143
    .catchall {:try_start_161 .. :try_end_178} :catchall_168

    goto/16 :goto_9a

    .line 569
    :catchall_17a
    move-exception v0

    move-object v2, v8

    goto :goto_153

    :catchall_17d
    move-exception v1

    move-object v2, v8

    move-object v8, v0

    move-object v0, v1

    goto :goto_153

    .line 564
    :catch_182
    move-exception v0

    move-object v1, v8

    goto :goto_147

    :catch_185
    move-exception v1

    move-object v9, v1

    move-object v1, v8

    move-object v8, v0

    move-object v0, v9

    goto :goto_147

    .line 524
    nop

    :pswitch_data_18c
    .packed-switch 0x0
        :pswitch_13c
        :pswitch_16c
        :pswitch_173
        :pswitch_161
    .end packed-switch
.end method
