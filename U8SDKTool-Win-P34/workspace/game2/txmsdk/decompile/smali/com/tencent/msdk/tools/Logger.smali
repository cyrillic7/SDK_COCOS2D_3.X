.class public Lcom/tencent/msdk/tools/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/tools/Logger$FileLogHandler;
    }
.end annotation


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static DEFAULT_TAG:Ljava/lang/String; = null

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final LOG_BOTH:I = 0x3

.field public static final LOG_CONSOLE:I = 0x1

.field public static final LOG_FILE:I = 0x2

.field private static final LOG_FILE_SIZE:J = 0xa00000L

.field private static final LOG_NULL:I = 0x0

.field private static final STACK_TRACE_DEEP:I = 0x4

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static fileLog:Lcom/tencent/msdk/tools/Logger$FileLogHandler;

.field private static logDevice:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-string v0, "WeGame"

    sput-object v0, Lcom/tencent/msdk/tools/Logger;->DEFAULT_TAG:Ljava/lang/String;

    .line 40
    const/4 v0, 0x1

    sput v0, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    return-void
.end method

.method public static d(Landroid/content/Intent;)V
    .registers 11
    .param p0, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x3

    .line 317
    sget v6, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    if-nez v6, :cond_6

    .line 354
    :goto_5
    return-void

    .line 320
    :cond_6
    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcom/tencent/msdk/tools/Logger;->getTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 321
    .local v5, "tag":Ljava/lang/String;
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_26

    .line 322
    :cond_14
    const-string v6, "********************** INTENT START **************************"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 323
    const-string v6, "empty Intent"

    sget v7, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v8, v5, v6, v7}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    .line 324
    const-string v6, "********************** INTENT END **************************"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_5

    .line 327
    :cond_26
    const-string v6, "********************** INTENT START **************************"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 328
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v8, v5, v6, v7}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    .line 329
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Component: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v8, v5, v6, v7}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    .line 330
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Flags: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v8, v5, v6, v7}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    .line 331
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scheme: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v8, v5, v6, v7}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    .line 334
    :try_start_9b
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 335
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 336
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_a7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 337
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, [B

    if-eqz v6, :cond_ec

    .line 338
    const/4 v6, 0x3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/HexUtil;->bytes2HexStr([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v6, v5, v7, v8}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_e0} :catch_e1

    goto :goto_a7

    .line 350
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_e1
    move-exception v1

    .line 351
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 353
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_e5
    const-string v6, "********************** INTENT END **************************"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 340
    .restart local v0    # "b":Landroid/os/Bundle;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_ec
    :try_start_ec
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_116

    .line 341
    const/4 v6, 0x3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v6, v5, v7, v8}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_a7

    .line 342
    :cond_116
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/Long;

    if-eqz v6, :cond_141

    .line 343
    const/4 v6, 0x3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v6, v5, v7, v8}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_a7

    .line 344
    :cond_141
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_16c

    .line 345
    const/4 v6, 0x3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v6, v5, v7, v8}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_a7

    .line 347
    :cond_16c
    const/4 v6, 0x3

    sget v7, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v6, v5, v3, v7}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_172} :catch_e1

    goto/16 :goto_a7
.end method

.method public static d(Landroid/os/Bundle;)V
    .registers 10
    .param p0, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x3

    .line 290
    sget v4, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    if-nez v4, :cond_6

    .line 314
    :cond_5
    :goto_5
    return-void

    .line 293
    :cond_6
    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/tencent/msdk/tools/Logger;->getTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, "tag":Ljava/lang/String;
    if-nez p0, :cond_16

    .line 295
    const-string v4, "empty bundle"

    sget v5, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v8, v3, v4, v5}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    .line 299
    :cond_16
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 300
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 301
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, [B

    if-eqz v4, :cond_57

    .line 302
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/tools/HexUtil;->bytes2HexStr([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v8, v3, v4, v5}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1e

    .line 304
    :cond_57
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_80

    .line 305
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v8, v3, v4, v5}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1e

    .line 306
    :cond_80
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Long;

    if-eqz v4, :cond_aa

    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v8, v3, v4, v5}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1e

    .line 308
    :cond_aa
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_d4

    .line 309
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v8, v3, v4, v5}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1e

    .line 311
    :cond_d4
    sget v4, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v8, v3, v1, v4}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1e
.end method

.method public static d(Ljava/lang/Object;)V
    .registers 5
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x3

    .line 278
    sget v1, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    if-nez v1, :cond_6

    .line 287
    :goto_5
    return-void

    .line 281
    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/tencent/msdk/tools/Logger;->getTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "tag":Ljava/lang/String;
    if-nez p0, :cond_16

    .line 283
    const-string v1, "empty msg"

    sget v2, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v3, v0, v1, v2}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    .line 286
    :cond_16
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v3, v0, v1, v2}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_5
.end method

.method public static d(Ljava/lang/String;)V
    .registers 5
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 272
    sget v0, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    if-lez v0, :cond_23

    .line 273
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/tencent/msdk/tools/Logger;->getTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    .line 275
    :cond_23
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 357
    sget v0, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    if-lez v0, :cond_a

    .line 358
    const/4 v0, 0x3

    sget v1, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v0, p0, p1, v1}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    .line 360
    :cond_a
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 232
    sget v0, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    if-lez v0, :cond_10

    .line 233
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/tencent/msdk/tools/Logger;->getTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v0, v1, p0, v2}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    .line 236
    :cond_10
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 254
    sget v0, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    if-lez v0, :cond_a

    .line 255
    const/4 v0, 0x6

    sget v1, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v0, p0, p1, v1}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    .line 257
    :cond_a
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v4, 0x1

    .line 239
    if-nez p1, :cond_4

    .line 251
    :goto_3
    return-void

    .line 242
    :cond_4
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 243
    .local v1, "stacks":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    if-le v2, v4, :cond_3e

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v2, "class : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; line : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    const/4 v2, 0x6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v2, p0, v3, v4}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    .line 250
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_3e
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public static getTag(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10
    .param p0, "subTag"    # Ljava/lang/String;
    .param p1, "index"    # I

    .prologue
    .line 209
    const-string v4, ""

    .line 210
    .local v4, "tag":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 211
    .local v5, "traces":[Ljava/lang/StackTraceElement;
    if-ltz p1, :cond_f

    array-length v6, v5

    if-lt p1, v6, :cond_12

    .line 212
    :cond_f
    sget-object v6, Lcom/tencent/msdk/tools/Logger;->DEFAULT_TAG:Ljava/lang/String;

    .line 228
    :goto_11
    return-object v6

    .line 214
    :cond_12
    aget-object v6, v5, p1

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "clsName":Ljava/lang/String;
    aget-object v6, v5, p1

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "methodName":Ljava/lang/String;
    const-string v3, ""

    .line 217
    .local v3, "shortClsName":Ljava/lang/String;
    const/16 v6, 0x2e

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 218
    .local v1, "dot":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2f

    .line 219
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 222
    :cond_2f
    invoke-static {p0}, Lcom/tencent/msdk/tools/CommonUtil;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 223
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/tencent/msdk/tools/Logger;->DEFAULT_TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_58
    move-object v6, v4

    .line 228
    goto :goto_11

    .line 225
    :cond_5a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/tencent/msdk/tools/Logger;->DEFAULT_TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_58
.end method

.method public static init()V
    .registers 2

    .prologue
    .line 150
    sget v0, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_c

    .line 151
    new-instance v0, Lcom/tencent/msdk/tools/Logger$FileLogHandler;

    invoke-direct {v0}, Lcom/tencent/msdk/tools/Logger$FileLogHandler;-><init>()V

    sput-object v0, Lcom/tencent/msdk/tools/Logger;->fileLog:Lcom/tencent/msdk/tools/Logger$FileLogHandler;

    .line 153
    :cond_c
    return-void
.end method

.method public static setLogType(Landroid/app/Activity;)V
    .registers 8
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x1

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "localLog"

    invoke-static {v3, v4}, Lcom/tencent/msdk/config/ConfigManager;->readValueByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "logTypeString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 51
    .local v1, "logType":I
    :try_start_c
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_39

    move-result v1

    .line 55
    :goto_10
    sget-object v3, Lcom/tencent/msdk/tools/Logger;->DEFAULT_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Logger type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    packed-switch v1, :pswitch_data_4c

    .line 70
    sput v6, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    .line 73
    :goto_2d
    sget v3, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    if-le v3, v6, :cond_38

    .line 74
    new-instance v3, Lcom/tencent/msdk/tools/Logger$FileLogHandler;

    invoke-direct {v3}, Lcom/tencent/msdk/tools/Logger$FileLogHandler;-><init>()V

    sput-object v3, Lcom/tencent/msdk/tools/Logger;->fileLog:Lcom/tencent/msdk/tools/Logger$FileLogHandler;

    .line 76
    :cond_38
    return-void

    .line 52
    :catch_39
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_10

    .line 58
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_3c
    sput v6, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    goto :goto_2d

    .line 61
    :pswitch_3f
    const/4 v3, 0x2

    sput v3, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    goto :goto_2d

    .line 64
    :pswitch_43
    const/4 v3, 0x3

    sput v3, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    goto :goto_2d

    .line 67
    :pswitch_47
    const/4 v3, 0x0

    sput v3, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    goto :goto_2d

    .line 56
    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_47
        :pswitch_3c
        :pswitch_3f
        :pswitch_43
    .end packed-switch
.end method

.method public static showInConsole(ILjava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "logType"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 106
    if-nez p2, :cond_4

    .line 107
    const-string p2, "NULL MSG"

    .line 109
    :cond_4
    packed-switch p0, :pswitch_data_1c

    .line 128
    :goto_7
    return-void

    .line 111
    :pswitch_8
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 114
    :pswitch_c
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 117
    :pswitch_10
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 120
    :pswitch_14
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 123
    :pswitch_18
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 109
    :pswitch_data_1c
    .packed-switch 0x2
        :pswitch_18
        :pswitch_10
        :pswitch_14
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method

.method public static showLog(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .param p0, "logType"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "device"    # I

    .prologue
    const-wide/16 v4, 0x3e8

    .line 79
    invoke-static {p2}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 80
    const-string p2, "NULL MSG"

    .line 82
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x59

    if-le v0, v1, :cond_34

    .line 83
    const/4 v0, 0x6

    sget-object v1, Lcom/tencent/msdk/tools/Logger;->DEFAULT_TAG:Ljava/lang/String;

    const-string v2, "tag is longer than 89"

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/tools/Logger;->showInConsole(ILjava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x56

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    :cond_34
    packed-switch p3, :pswitch_data_94

    .line 103
    :goto_37
    return-void

    .line 88
    :pswitch_38
    invoke-static {p0, p1, p2}, Lcom/tencent/msdk/tools/Logger;->showInConsole(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 91
    :pswitch_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->writeToLog(Ljava/lang/String;)V

    goto :goto_37

    .line 95
    :pswitch_66
    invoke-static {p0, p1, p2}, Lcom/tencent/msdk/tools/Logger;->showInConsole(ILjava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->writeToLog(Ljava/lang/String;)V

    goto :goto_37

    .line 86
    nop

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_38
        :pswitch_3c
        :pswitch_66
    .end packed-switch
.end method

.method public static timeStamp(Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 9
    .param p0, "exception"    # Ljava/lang/Exception;
    .param p1, "step"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v3, v4, v5

    .line 132
    .local v3, "stackTraceElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "methodName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    .line 135
    .local v1, "lineNum":I
    if-nez p1, :cond_42

    .line 136
    const-string p1, ""

    .line 139
    :goto_17
    const-string v4, "TimeStamp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void

    .line 138
    :cond_42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_17
.end method

.method public static w(Ljava/lang/String;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 260
    sget v0, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    if-lez v0, :cond_10

    .line 261
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/tencent/msdk/tools/Logger;->getTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v0, v1, p0, v2}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    .line 263
    :cond_10
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 266
    sget v0, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    if-lez v0, :cond_a

    .line 267
    const/4 v0, 0x5

    sget v1, Lcom/tencent/msdk/tools/Logger;->logDevice:I

    invoke-static {v0, p0, p1, v1}, Lcom/tencent/msdk/tools/Logger;->showLog(ILjava/lang/String;Ljava/lang/String;I)V

    .line 269
    :cond_a
    return-void
.end method

.method private static writeToLog(Ljava/lang/String;)V
    .registers 3
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 144
    sget-object v1, Lcom/tencent/msdk/tools/Logger;->fileLog:Lcom/tencent/msdk/tools/Logger$FileLogHandler;

    invoke-virtual {v1}, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 145
    .local v0, "msg":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 146
    sget-object v1, Lcom/tencent/msdk/tools/Logger;->fileLog:Lcom/tencent/msdk/tools/Logger$FileLogHandler;

    invoke-virtual {v1, v0}, Lcom/tencent/msdk/tools/Logger$FileLogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 147
    return-void
.end method
