.class public final Lcom/tencent/beacon/applog/b;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field protected static a:Landroid/content/Context;

.field private static c:Lcom/tencent/beacon/applog/b;

.field private static d:Lcom/tencent/beacon/event/g;

.field private static e:Lcom/tencent/beacon/applog/a;


# instance fields
.field protected b:Lcom/tencent/beacon/upload/g;

.field private f:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/tencent/beacon/applog/b;->c:Lcom/tencent/beacon/applog/b;

    .line 27
    sput-object v0, Lcom/tencent/beacon/applog/b;->d:Lcom/tencent/beacon/event/g;

    .line 28
    sput-object v0, Lcom/tencent/beacon/applog/b;->e:Lcom/tencent/beacon/applog/a;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/tencent/beacon/applog/b$1;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/applog/b$1;-><init>(Lcom/tencent/beacon/applog/b;)V

    iput-object v0, p0, Lcom/tencent/beacon/applog/b;->f:Ljava/lang/Runnable;

    .line 159
    invoke-static {}, Lcom/tencent/beacon/event/p;->d()Lcom/tencent/beacon/event/p;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_2b

    .line 161
    iget-object v1, v0, Lcom/tencent/beacon/event/p;->c:Landroid/content/Context;

    sput-object v1, Lcom/tencent/beacon/applog/b;->a:Landroid/content/Context;

    .line 162
    invoke-virtual {v0}, Lcom/tencent/beacon/event/p;->h()Lcom/tencent/beacon/upload/g;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/beacon/applog/b;->b:Lcom/tencent/beacon/upload/g;

    .line 163
    iget-object v1, v0, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    if-eqz v1, :cond_2c

    .line 164
    iget-object v0, v0, Lcom/tencent/beacon/event/p;->a:Lcom/tencent/beacon/event/g;

    sput-object v0, Lcom/tencent/beacon/applog/b;->d:Lcom/tencent/beacon/event/g;

    .line 168
    :goto_22
    new-instance v0, Lcom/tencent/beacon/applog/a;

    sget-object v1, Lcom/tencent/beacon/applog/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/beacon/applog/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/beacon/applog/b;->e:Lcom/tencent/beacon/applog/a;

    .line 170
    :cond_2b
    return-void

    .line 166
    :cond_2c
    new-instance v0, Lcom/tencent/beacon/event/g;

    invoke-direct {v0}, Lcom/tencent/beacon/event/g;-><init>()V

    sput-object v0, Lcom/tencent/beacon/applog/b;->d:Lcom/tencent/beacon/event/g;

    goto :goto_22
.end method

.method public static declared-synchronized a()Lcom/tencent/beacon/applog/b;
    .registers 2

    .prologue
    .line 33
    const-class v1, Lcom/tencent/beacon/applog/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/beacon/applog/b;->c:Lcom/tencent/beacon/applog/b;

    if-nez v0, :cond_e

    .line 34
    new-instance v0, Lcom/tencent/beacon/applog/b;

    invoke-direct {v0}, Lcom/tencent/beacon/applog/b;-><init>()V

    sput-object v0, Lcom/tencent/beacon/applog/b;->c:Lcom/tencent/beacon/applog/b;

    .line 36
    :cond_e
    sget-object v0, Lcom/tencent/beacon/applog/b;->c:Lcom/tencent/beacon/applog/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 248
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v0, "MM/dd/yyyy HH:mm:ss"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 249
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 250
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 251
    invoke-static {}, Lcom/tencent/beacon/a/e;->m()Lcom/tencent/beacon/a/e;

    move-result-object v4

    .line 253
    if-eqz v4, :cond_2e

    .line 254
    invoke-virtual {v4}, Lcom/tencent/beacon/a/e;->h()J

    move-result-wide v4

    .line 255
    add-long/2addr v0, v4

    .line 257
    :cond_2e
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5c} :catch_5e

    move-result-object v0

    .line 262
    :goto_5d
    return-object v0

    .line 259
    :catch_5e
    move-exception v0

    .line 260
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 262
    const-string v0, ""

    goto :goto_5d
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 205
    invoke-static {}, Lcom/tencent/beacon/applog/b;->a()Lcom/tencent/beacon/applog/b;

    move-result-object v0

    if-nez v0, :cond_13

    const-string v0, "isModuleAble:not init ua"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/beacon/e/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    :goto_10
    if-nez v0, :cond_21

    .line 231
    :cond_12
    :goto_12
    return v2

    .line 205
    :cond_13
    sget-object v0, Lcom/tencent/beacon/applog/b;->d:Lcom/tencent/beacon/event/g;

    if-eqz v0, :cond_ca

    sget-object v0, Lcom/tencent/beacon/applog/b;->d:Lcom/tencent/beacon/event/g;

    invoke-virtual {v0}, Lcom/tencent/beacon/event/g;->n()Z

    move-result v0

    if-eqz v0, :cond_ca

    move v0, v1

    goto :goto_10

    .line 209
    :cond_21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v3, Lcom/tencent/beacon/applog/b;->d:Lcom/tencent/beacon/event/g;

    if-eqz v3, :cond_ac

    sget-object v3, Lcom/tencent/beacon/applog/b;->d:Lcom/tencent/beacon/event/g;

    invoke-virtual {v3}, Lcom/tencent/beacon/event/g;->o()I

    move-result v3

    if-gt v0, v3, :cond_99

    :goto_31
    if-eqz v1, :cond_12

    .line 213
    sget-object v0, Lcom/tencent/beacon/applog/b;->e:Lcom/tencent/beacon/applog/a;

    if-eqz v0, :cond_12

    .line 214
    new-instance v0, Lcom/tencent/beacon/b/a;

    invoke-direct {v0}, Lcom/tencent/beacon/b/a;-><init>()V

    .line 215
    invoke-static {p0}, Lcom/tencent/beacon/applog/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-virtual {v0, v1}, Lcom/tencent/beacon/b/a;->e(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, p1}, Lcom/tencent/beacon/b/a;->d(Ljava/lang/String;)V

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/tencent/beacon/b/a;->b(J)V

    .line 219
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Lcom/tencent/beacon/b/a;->c(J)V

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "appLog upload   logSize:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    if-eqz p2, :cond_ae

    sget-object v1, Lcom/tencent/beacon/applog/b;->d:Lcom/tencent/beacon/event/g;

    invoke-virtual {v1}, Lcom/tencent/beacon/event/g;->r()Z

    move-result v1

    if-eqz v1, :cond_ae

    invoke-static {}, Lcom/tencent/beacon/applog/b;->d()Z

    move-result v1

    if-nez v1, :cond_ae

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "appLog upload   isRealTime:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    sget-object v1, Lcom/tencent/beacon/applog/b;->e:Lcom/tencent/beacon/applog/a;

    invoke-virtual {v1, v0}, Lcom/tencent/beacon/applog/a;->a(Lcom/tencent/beacon/b/a;)Z

    move-result v2

    goto/16 :goto_12

    .line 209
    :cond_99
    const-string v0, " reach app Log size limited! %d "

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/tencent/beacon/applog/b;->d:Lcom/tencent/beacon/event/g;

    invoke-virtual {v3}, Lcom/tencent/beacon/event/g;->o()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_ac
    move v1, v2

    goto :goto_31

    .line 227
    :cond_ae
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "appLog upload   isRealTime:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    sget-object v1, Lcom/tencent/beacon/applog/b;->e:Lcom/tencent/beacon/applog/a;

    invoke-virtual {v1, v0}, Lcom/tencent/beacon/applog/a;->b(Lcom/tencent/beacon/b/a;)Z

    move-result v2

    goto/16 :goto_12

    :cond_ca
    move v0, v2

    goto/16 :goto_10
.end method

.method public static b()V
    .registers 2

    .prologue
    .line 105
    invoke-static {}, Lcom/tencent/beacon/applog/b;->a()Lcom/tencent/beacon/applog/b;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_15

    .line 107
    invoke-static {}, Lcom/tencent/beacon/applog/b;->d()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/beacon/applog/b;->f:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lcom/tencent/beacon/a/d;->a(Ljava/lang/Runnable;)V

    .line 110
    :cond_15
    return-void
.end method

.method public static c()I
    .registers 1

    .prologue
    .line 180
    sget-object v0, Lcom/tencent/beacon/applog/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/applog/a;->a(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private static d()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 235
    sget-object v2, Lcom/tencent/beacon/applog/b;->a:Landroid/content/Context;

    const-string v3, "app_log_consume"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Lcom/tencent/beacon/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    sget-object v4, Lcom/tencent/beacon/applog/b;->d:Lcom/tencent/beacon/event/g;

    invoke-virtual {v4}, Lcom/tencent/beacon/event/g;->c()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2f

    .line 237
    const-string v2, " reach app Log upload size limited! %d "

    new-array v3, v0, [Ljava/lang/Object;

    sget-object v4, Lcom/tencent/beacon/applog/b;->d:Lcom/tencent/beacon/event/g;

    invoke-virtual {v4}, Lcom/tencent/beacon/event/g;->o()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/tencent/beacon/e/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    :goto_2e
    return v0

    :cond_2f
    move v0, v1

    goto :goto_2e
.end method
