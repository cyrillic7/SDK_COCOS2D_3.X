.class public Lcom/tencent/android/tpush/service/a/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static a:J

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:I

.field public static k:I

.field public static l:I

.field public static m:I

.field public static n:I

.field public static o:I

.field public static p:I

.field public static q:I

.field public static r:I

.field public static s:I

.field public static t:I

.field public static u:Ljava/lang/String;

.field public static v:I

.field public static w:I

.field public static x:Ljava/lang/String;

.field public static y:I

.field public static z:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0x7530

    const/4 v3, 0x5

    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 103
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/service/a/a;->x:Ljava/lang/String;

    .line 105
    sput v1, Lcom/tencent/android/tpush/service/a/a;->y:I

    .line 107
    sput v1, Lcom/tencent/android/tpush/service/a/a;->z:I

    .line 216
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/a/a;->a(Landroid/content/Context;)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/android/tpush/service/a/a;->a:J

    .line 218
    const-string v0, "recTo"

    invoke-static {v0, v4}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/android/tpush/service/a/a;->b:I

    .line 219
    const-string v0, "hbIntvl"

    const v1, 0x493cc

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/android/tpush/service/a/a;->c:I

    .line 221
    const-string v0, "httpHbIntvl"

    const v1, 0x927c0

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/android/tpush/service/a/a;->d:I

    .line 223
    const-string v0, "stIntvl"

    const v1, 0x337f980

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/android/tpush/service/a/a;->e:I

    .line 225
    const-string v0, "cnMsgExp"

    const v1, 0xea60

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/android/tpush/service/a/a;->f:I

    .line 228
    const-string v0, "fqcSuc"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/android/tpush/service/a/a;->g:I

    .line 230
    const-string v0, "fqcFal"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/android/tpush/service/a/a;->h:I

    .line 232
    const-string v0, "rptIntvl"

    const/16 v1, 0x4b0

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/android/tpush/service/a/a;->i:I

    .line 234
    const-string v0, "rptMaxCnt"

    invoke-static {v0, v3}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/android/tpush/service/a/a;->j:I

    .line 236
    const-string v0, "httpRtCnt"

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/android/tpush/service/a/a;->k:I

    .line 239
    const-string v0, "ackMaxCnt"

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/android/tpush/service/a/a;->l:I

    .line 240
    const-string v0, "ackDuration"

    const v1, 0x2bf20

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/android/tpush/service/a/a;->m:I

    .line 242
    const-string v0, "loadIpIntvl"

    const v1, 0x44aa200

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/android/tpush/service/a/a;->n:I

    .line 245
    const-string v0, "redirectConnectTime"

    invoke-static {v0, v4}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/android/tpush/service/a/a;->o:I

    .line 247
    const-string v0, "redirectSoTime"

    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/android/tpush/service/a/a;->p:I

    .line 249
    const-string v0, "strategyExpiredTime"

    const/16 v1, 0x5a0

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/android/tpush/service/a/a;->q:I

    .line 251
    const-string v0, "rptLive"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/android/tpush/service/a/a;->v:I

    .line 252
    const-string v0, "rptLiveIntvl"

    const/16 v1, 0xe10

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/android/tpush/service/a/a;->w:I

    .line 253
    const-string v0, "logLevel"

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/android/tpush/service/a/a;->r:I

    .line 254
    const-string v0, "logFileSizeLimit"

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/android/tpush/service/a/a;->s:I

    .line 257
    const-string v0, "errCount"

    invoke-static {v0, v3}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/android/tpush/service/a/a;->t:I

    .line 258
    const-string v0, "logUploadDomain"

    const-string v1, "183.61.46.193"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/service/a/a;->u:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public static a(Ljava/lang/String;I)I
    .registers 4

    .prologue
    .line 517
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 518
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/tencent/android/tpush/service/d/d;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    .line 525
    :cond_12
    :goto_12
    return p1

    .line 521
    :cond_13
    invoke-static {}, Lcom/tencent/android/tpush/logging/b/c;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 522
    invoke-static {}, Lcom/tencent/android/tpush/logging/b/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/tencent/android/tpush/service/d/d;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    goto :goto_12
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;)I
    .registers 4

    .prologue
    .line 549
    if-eqz p1, :cond_17

    invoke-static {p0}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 551
    :try_start_8
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_d

    move-result v0

    .line 556
    :goto_c
    return v0

    .line 552
    :catch_d
    move-exception v0

    .line 553
    const-string v1, "XGService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :cond_17
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static a(Landroid/content/Context;)J
    .registers 6

    .prologue
    const-wide/16 v0, 0x1

    .line 481
    if-eqz p0, :cond_2c

    .line 482
    const-string v2, "XGService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@ getConfVersion("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v2, "confVer"

    invoke-static {v2}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0, v1}, Lcom/tencent/android/tpush/service/d/d;->c(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 488
    :cond_2c
    return-wide v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 530
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 531
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/d/d;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 539
    :cond_18
    :goto_18
    return-object p1

    :cond_19
    move-object p1, v0

    .line 533
    goto :goto_18

    .line 535
    :cond_1b
    invoke-static {}, Lcom/tencent/android/tpush/logging/b/c;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 536
    invoke-static {}, Lcom/tencent/android/tpush/logging/b/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/d/d;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 537
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    move-object p1, v0

    goto :goto_18
.end method

.method public static a(Ljava/lang/String;)V
    .registers 11

    .prologue
    const/16 v2, 0x7530

    const/16 v1, 0xe10

    const/4 v0, 0x5

    const/4 v3, 0x3

    .line 272
    const-string v4, "XGService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@@ parseValue("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :try_start_24
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 275
    const-string v4, "confVer"

    invoke-static {v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lcom/tencent/android/tpush/service/a/a;->a:J

    .line 276
    sget-wide v4, Lcom/tencent/android/tpush/service/a/a;->a:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-nez v4, :cond_3b1

    const-wide/16 v4, 0x1

    :goto_3c
    sput-wide v4, Lcom/tencent/android/tpush/service/a/a;->a:J

    .line 279
    const-string v4, "recTo"

    invoke-static {v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    sput v4, Lcom/tencent/android/tpush/service/a/a;->b:I

    .line 280
    sget v4, Lcom/tencent/android/tpush/service/a/a;->b:I

    if-nez v4, :cond_3b5

    move v4, v2

    :goto_4d
    sput v4, Lcom/tencent/android/tpush/service/a/a;->b:I

    .line 283
    const-string v4, "hbIntvl"

    invoke-static {v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    sput v4, Lcom/tencent/android/tpush/service/a/a;->c:I

    .line 285
    sget v4, Lcom/tencent/android/tpush/service/a/a;->c:I

    if-nez v4, :cond_3b9

    const v4, 0x493cc

    :goto_62
    sput v4, Lcom/tencent/android/tpush/service/a/a;->c:I

    .line 288
    const-string v4, "httpHbIntvl"

    invoke-static {v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    sput v4, Lcom/tencent/android/tpush/service/a/a;->d:I

    .line 290
    sget v4, Lcom/tencent/android/tpush/service/a/a;->d:I

    if-nez v4, :cond_3bd

    const v4, 0x927c0

    :goto_77
    sput v4, Lcom/tencent/android/tpush/service/a/a;->d:I

    .line 293
    const-string v4, "stIntvl"

    invoke-static {v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    sput v4, Lcom/tencent/android/tpush/service/a/a;->e:I

    .line 295
    sget v4, Lcom/tencent/android/tpush/service/a/a;->e:I

    if-nez v4, :cond_3c1

    const v4, 0x337f980

    :goto_8c
    sput v4, Lcom/tencent/android/tpush/service/a/a;->e:I

    .line 298
    const-string v4, "cnMsgExp"

    invoke-static {v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    sput v4, Lcom/tencent/android/tpush/service/a/a;->f:I

    .line 300
    sget v4, Lcom/tencent/android/tpush/service/a/a;->f:I

    if-nez v4, :cond_3c5

    const v4, 0xea60

    :goto_9f
    sput v4, Lcom/tencent/android/tpush/service/a/a;->f:I

    .line 303
    const-string v4, "fqcSuc"

    invoke-static {v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    sput v4, Lcom/tencent/android/tpush/service/a/a;->g:I

    .line 304
    sget v4, Lcom/tencent/android/tpush/service/a/a;->g:I

    if-nez v4, :cond_3c9

    const/16 v4, 0xa

    :goto_af
    sput v4, Lcom/tencent/android/tpush/service/a/a;->g:I

    .line 307
    const-string v4, "fqcFal"

    invoke-static {v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    sput v4, Lcom/tencent/android/tpush/service/a/a;->h:I

    .line 308
    sget v4, Lcom/tencent/android/tpush/service/a/a;->h:I

    if-nez v4, :cond_3cd

    const/16 v4, 0x64

    :goto_bf
    sput v4, Lcom/tencent/android/tpush/service/a/a;->h:I

    .line 311
    const-string v4, "rptIntvl"

    invoke-static {v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    sput v4, Lcom/tencent/android/tpush/service/a/a;->i:I

    .line 312
    sget v4, Lcom/tencent/android/tpush/service/a/a;->i:I

    if-nez v4, :cond_3d1

    const/16 v4, 0x4b0

    :goto_cf
    sput v4, Lcom/tencent/android/tpush/service/a/a;->i:I

    .line 315
    const-string v4, "rptMaxCnt"

    invoke-static {v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    sput v4, Lcom/tencent/android/tpush/service/a/a;->j:I

    .line 316
    sget v4, Lcom/tencent/android/tpush/service/a/a;->j:I

    if-nez v4, :cond_3d5

    move v4, v0

    :goto_de
    sput v4, Lcom/tencent/android/tpush/service/a/a;->j:I

    .line 319
    const-string v4, "httpRtCnt"

    invoke-static {v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    sput v4, Lcom/tencent/android/tpush/service/a/a;->k:I

    .line 320
    sget v4, Lcom/tencent/android/tpush/service/a/a;->k:I

    if-nez v4, :cond_3d9

    move v4, v3

    :goto_ed
    sput v4, Lcom/tencent/android/tpush/service/a/a;->k:I

    .line 323
    const-string v4, "ackMaxCnt"

    invoke-static {v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    sput v4, Lcom/tencent/android/tpush/service/a/a;->l:I

    .line 324
    sget v4, Lcom/tencent/android/tpush/service/a/a;->l:I

    if-nez v4, :cond_3dd

    :goto_fb
    sput v3, Lcom/tencent/android/tpush/service/a/a;->l:I

    .line 326
    const-string v3, "ackDuration"

    invoke-static {v3, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    sput v3, Lcom/tencent/android/tpush/service/a/a;->m:I

    .line 327
    sget v3, Lcom/tencent/android/tpush/service/a/a;->m:I

    if-nez v3, :cond_3e1

    const v3, 0x2bf20

    :goto_10e
    sput v3, Lcom/tencent/android/tpush/service/a/a;->m:I

    .line 329
    const-string v3, "loadIpIntvl"

    invoke-static {v3, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    sput v3, Lcom/tencent/android/tpush/service/a/a;->n:I

    .line 330
    sget v3, Lcom/tencent/android/tpush/service/a/a;->n:I

    if-nez v3, :cond_3e5

    const v3, 0x44aa200

    :goto_125
    sput v3, Lcom/tencent/android/tpush/service/a/a;->n:I

    .line 333
    const-string v3, "redirectConnectTime"

    invoke-static {v3, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v3

    sput v3, Lcom/tencent/android/tpush/service/a/a;->o:I

    .line 335
    sget v3, Lcom/tencent/android/tpush/service/a/a;->o:I

    if-nez v3, :cond_3e9

    :goto_133
    sput v2, Lcom/tencent/android/tpush/service/a/a;->o:I

    .line 338
    const-string v2, "redirectSoTime"

    invoke-static {v2, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v2

    sput v2, Lcom/tencent/android/tpush/service/a/a;->p:I

    .line 340
    sget v2, Lcom/tencent/android/tpush/service/a/a;->p:I

    if-nez v2, :cond_3ed

    const/16 v2, 0x4e20

    :goto_143
    sput v2, Lcom/tencent/android/tpush/service/a/a;->p:I

    .line 343
    const-string v2, "strategyExpiredTime"

    invoke-static {v2, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v2

    sput v2, Lcom/tencent/android/tpush/service/a/a;->q:I

    .line 345
    sget v2, Lcom/tencent/android/tpush/service/a/a;->q:I

    if-nez v2, :cond_3f1

    const/16 v2, 0x5a0

    :goto_153
    sput v2, Lcom/tencent/android/tpush/service/a/a;->q:I

    .line 348
    const-string v2, "rptLive"

    invoke-static {v2, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v2

    sput v2, Lcom/tencent/android/tpush/service/a/a;->v:I

    .line 349
    sget v2, Lcom/tencent/android/tpush/service/a/a;->v:I

    if-nez v2, :cond_3f5

    const/4 v2, 0x0

    :goto_162
    sput v2, Lcom/tencent/android/tpush/service/a/a;->v:I

    .line 351
    const-string v2, "rptLiveIntvl"

    invoke-static {v2, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v2

    sput v2, Lcom/tencent/android/tpush/service/a/a;->w:I

    .line 352
    sget v2, Lcom/tencent/android/tpush/service/a/a;->w:I

    if-ne v2, v1, :cond_3f9

    :goto_170
    sput v1, Lcom/tencent/android/tpush/service/a/a;->w:I

    .line 355
    const-string v1, "logLevel"

    invoke-static {v1, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v1

    sput v1, Lcom/tencent/android/tpush/service/a/a;->r:I

    .line 356
    sget v1, Lcom/tencent/android/tpush/service/a/a;->r:I

    if-nez v1, :cond_3fd

    const/16 v1, 0x3f

    :goto_180
    sput v1, Lcom/tencent/android/tpush/service/a/a;->r:I

    .line 358
    const-string v1, "logFileSizeLimit"

    invoke-static {v1, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    sput v1, Lcom/tencent/android/tpush/service/a/a;->s:I

    .line 359
    sget v1, Lcom/tencent/android/tpush/service/a/a;->s:I

    if-nez v1, :cond_401

    const/high16 v1, 0x40000

    :goto_192
    sput v1, Lcom/tencent/android/tpush/service/a/a;->s:I

    .line 362
    const-string v1, "errCount"

    invoke-static {v1, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v1

    sput v1, Lcom/tencent/android/tpush/service/a/a;->t:I

    .line 363
    sget v1, Lcom/tencent/android/tpush/service/a/a;->t:I

    if-nez v1, :cond_405

    :goto_1a0
    sput v0, Lcom/tencent/android/tpush/service/a/a;->t:I

    .line 365
    const-string v0, "logUploadDomain"

    invoke-static {v0, v6}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/service/a/a;->u:Ljava/lang/String;

    .line 366
    sget-object v0, Lcom/tencent/android/tpush/service/a/a;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_409

    const-string v0, "183.61.46.193"

    :goto_1b4
    sput-object v0, Lcom/tencent/android/tpush/service/a/a;->u:Ljava/lang/String;

    .line 369
    const-string v0, "enableWd"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/android/tpush/service/a/a;->y:I

    .line 370
    const-string v0, "report"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/android/tpush/service/a/a;->z:I

    .line 371
    const-string v0, "stopXG"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/service/a/a;->x:Ljava/lang/String;

    .line 373
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> redct="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/service/a/a;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " redso="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/service/a/a;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/service/a/a;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " loglevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/service/a/a;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " filesize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/service/a/a;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rptLive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/service/a/a;->v:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3b0

    .line 381
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "confVer"

    invoke-static {v1}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-wide v2, Lcom/tencent/android/tpush/service/a/a;->a:J

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/android/tpush/service/d/d;->b(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 385
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "recTo"

    invoke-static {v1}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/service/a/a;->b:I

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 387
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "hbIntvl"

    invoke-static {v1}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/service/a/a;->c:I

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 389
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "httpHbIntvl"

    invoke-static {v1}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/service/a/a;->d:I

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 392
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "stIntvl"

    invoke-static {v1}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/service/a/a;->e:I

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 394
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cnMsgExp"

    invoke-static {v1}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/service/a/a;->f:I

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 399
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "fqcSuc"

    invoke-static {v1}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/service/a/a;->g:I

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 403
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "fqcFal"

    invoke-static {v1}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/service/a/a;->h:I

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 407
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rptIntvl"

    invoke-static {v1}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/service/a/a;->i:I

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 411
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rptMaxCnt"

    invoke-static {v1}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/service/a/a;->j:I

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 415
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "httpRtCnt"

    invoke-static {v1}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/service/a/a;->k:I

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 419
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ackMaxCnt"

    invoke-static {v1}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/service/a/a;->l:I

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 423
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ackDuration"

    invoke-static {v1}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/service/a/a;->m:I

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 427
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "loadIpIntvl"

    invoke-static {v1}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/service/a/a;->n:I

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 431
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "redirectConnectTime"

    invoke-static {v1}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/service/a/a;->o:I

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 435
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "redirectSoTime"

    invoke-static {v1}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/service/a/a;->p:I

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 438
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "strategyExpiredTime"

    invoke-static {v1}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/service/a/a;->q:I

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 442
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rptLive"

    invoke-static {v1}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/service/a/a;->v:I

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 445
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rptLiveIntvl"

    invoke-static {v1}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/service/a/a;->w:I

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 448
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "logLevel"

    invoke-static {v1}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/service/a/a;->r:I

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 451
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "logFileSizeLimit"

    invoke-static {v1}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/service/a/a;->s:I

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 454
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "errCount"

    invoke-static {v1}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/service/a/a;->t:I

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 456
    sget-object v0, Lcom/tencent/android/tpush/service/a/a;->x:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_392

    .line 458
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "stopXG"

    invoke-static {v1}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/android/tpush/service/a/a;->x:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 463
    :cond_392
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "enableWd"

    invoke-static {v1}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/service/a/a;->y:I

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 466
    invoke-static {}, Lcom/tencent/android/tpush/service/l;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "report"

    invoke-static {v1}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/tencent/android/tpush/service/a/a;->z:I

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/service/d/d;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 472
    :cond_3b0
    :goto_3b0
    return-void

    .line 276
    :cond_3b1
    sget-wide v4, Lcom/tencent/android/tpush/service/a/a;->a:J

    goto/16 :goto_3c

    .line 280
    :cond_3b5
    sget v4, Lcom/tencent/android/tpush/service/a/a;->b:I

    goto/16 :goto_4d

    .line 285
    :cond_3b9
    sget v4, Lcom/tencent/android/tpush/service/a/a;->c:I

    goto/16 :goto_62

    .line 290
    :cond_3bd
    sget v4, Lcom/tencent/android/tpush/service/a/a;->d:I

    goto/16 :goto_77

    .line 295
    :cond_3c1
    sget v4, Lcom/tencent/android/tpush/service/a/a;->e:I

    goto/16 :goto_8c

    .line 300
    :cond_3c5
    sget v4, Lcom/tencent/android/tpush/service/a/a;->f:I

    goto/16 :goto_9f

    .line 304
    :cond_3c9
    sget v4, Lcom/tencent/android/tpush/service/a/a;->g:I

    goto/16 :goto_af

    .line 308
    :cond_3cd
    sget v4, Lcom/tencent/android/tpush/service/a/a;->h:I

    goto/16 :goto_bf

    .line 312
    :cond_3d1
    sget v4, Lcom/tencent/android/tpush/service/a/a;->i:I

    goto/16 :goto_cf

    .line 316
    :cond_3d5
    sget v4, Lcom/tencent/android/tpush/service/a/a;->j:I

    goto/16 :goto_de

    .line 320
    :cond_3d9
    sget v4, Lcom/tencent/android/tpush/service/a/a;->k:I

    goto/16 :goto_ed

    .line 324
    :cond_3dd
    sget v3, Lcom/tencent/android/tpush/service/a/a;->l:I

    goto/16 :goto_fb

    .line 327
    :cond_3e1
    sget v3, Lcom/tencent/android/tpush/service/a/a;->m:I

    goto/16 :goto_10e

    .line 330
    :cond_3e5
    sget v3, Lcom/tencent/android/tpush/service/a/a;->n:I

    goto/16 :goto_125

    .line 335
    :cond_3e9
    sget v2, Lcom/tencent/android/tpush/service/a/a;->o:I

    goto/16 :goto_133

    .line 340
    :cond_3ed
    sget v2, Lcom/tencent/android/tpush/service/a/a;->p:I

    goto/16 :goto_143

    .line 345
    :cond_3f1
    sget v2, Lcom/tencent/android/tpush/service/a/a;->q:I

    goto/16 :goto_153

    .line 349
    :cond_3f5
    sget v2, Lcom/tencent/android/tpush/service/a/a;->v:I

    goto/16 :goto_162

    .line 352
    :cond_3f9
    sget v1, Lcom/tencent/android/tpush/service/a/a;->w:I

    goto/16 :goto_170

    .line 356
    :cond_3fd
    sget v1, Lcom/tencent/android/tpush/service/a/a;->r:I

    goto/16 :goto_180

    .line 359
    :cond_401
    sget v1, Lcom/tencent/android/tpush/service/a/a;->s:I

    goto/16 :goto_192

    .line 363
    :cond_405
    sget v0, Lcom/tencent/android/tpush/service/a/a;->t:I

    goto/16 :goto_1a0

    .line 366
    :cond_409
    sget-object v0, Lcom/tencent/android/tpush/service/a/a;->u:Ljava/lang/String;
    :try_end_40b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_40b} :catch_40d

    goto/16 :goto_1b4

    .line 469
    :catch_40d
    move-exception v0

    .line 470
    const-string v1, "XGService"

    const-string v2, "parseValue failed."

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/logging/TLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3b0
.end method

.method public static a(Landroid/content/Context;J)Z
    .registers 6

    .prologue
    .line 499
    if-eqz p0, :cond_3d

    invoke-static {p0}, Lcom/tencent/android/tpush/service/a/a;->a(Landroid/content/Context;)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_3d

    .line 500
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ getConfVersion("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v0, "confVer"

    invoke-static {v0}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/tencent/android/tpush/service/d/d;->b(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    .line 504
    :goto_3c
    return v0

    :cond_3d
    const/4 v0, 0x0

    goto :goto_3c
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.tencent.tpus."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 560
    if-eqz p1, :cond_17

    invoke-static {p0}, Lcom/tencent/android/tpush/service/d/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 562
    :try_start_8
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v0

    .line 567
    :goto_c
    return-object v0

    .line 563
    :catch_d
    move-exception v0

    .line 564
    const-string v1, "XGService"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :cond_17
    const-string v0, ""

    goto :goto_c
.end method
