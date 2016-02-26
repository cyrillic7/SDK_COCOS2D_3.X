.class public Lcom/alipay/sdk/app/PayTask;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/Object;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Ljava/lang/String;

.field private d:Landroid/app/Dialog;

.field private e:Lcom/alipay/sdk/util/FileDownloader;

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/Runnable;

.field private k:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const-class v0, Lcom/alipay/sdk/util/PayHelper;

    sput-object v0, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    new-instance v0, Lcom/alipay/sdk/app/PayTask$4;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/PayTask$4;-><init>(Lcom/alipay/sdk/app/PayTask;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->j:Ljava/lang/Runnable;

    .line 451
    new-instance v0, Lcom/alipay/sdk/app/PayTask$5;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/PayTask$5;-><init>(Lcom/alipay/sdk/app/PayTask;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->k:Landroid/content/BroadcastReceiver;

    .line 67
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/app/PayTask;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/sdk/app/PayTask;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask;->d:Landroid/app/Dialog;

    return-object p1
.end method

.method private a()Ljava/lang/String;
    .registers 4

    .prologue
    .line 114
    sget-boolean v0, Lcom/alipay/sdk/cons/GlobalConstants;->n:Z

    if-eqz v0, :cond_20

    .line 115
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v1, "https://wappaygw.alipay.com/home/exterfaceAssign.htm?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 116
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v2, "https://wappaygw.alipay.com/home/exterfaceAssign.htm?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x35

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    .line 137
    :cond_20
    :goto_20
    new-instance v0, Lcom/alipay/sdk/util/PayHelper;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/sdk/util/PayHelper;-><init>(Landroid/app/Activity;)V

    .line 139
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v2, "bizcontext="

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 140
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/util/PayHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_37
    return-object v0

    .line 119
    :cond_38
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v1, "https://mclient.alipay.com/home/exterfaceAssign.htm?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 121
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v2, "https://mclient.alipay.com/home/exterfaceAssign.htm?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x34

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    goto :goto_20

    .line 124
    :cond_55
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v1, "http://mcashier.stable.alipay.net/home/exterfaceAssign.htm?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 126
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v2, "http://mcashier.stable.alipay.net/home/exterfaceAssign.htm?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    goto :goto_20

    .line 129
    :cond_72
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v1, "http://mobileclientgw.stable.alipay.net/home/exterfaceAssign.htm?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 131
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v2, "http://mobileclientgw.stable.alipay.net/home/exterfaceAssign.htm?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x41

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    goto :goto_20

    .line 142
    :cond_8f
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&bizcontext=\"{\"appkey\":\"2014052600006128\"}\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/util/PayHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    .line 146
    :cond_b3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&bizcontext={\"appkey\":\"2014052600006128\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/util/PayHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_37
.end method

.method private a(Lcom/alipay/sdk/protocol/ActionType;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 242
    invoke-virtual {p1}, Lcom/alipay/sdk/protocol/ActionType;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 244
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    const-class v3, Lcom/alipay/sdk/app/H5PayActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 246
    const/4 v3, 0x0

    aget-object v3, v0, v3

    .line 247
    const-string v4, "url"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 250
    const/4 v3, 0x1

    aget-object v0, v0, v3

    .line 251
    const-string v3, "cookie"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_2a
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 255
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 257
    sget-object v1, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    :try_start_35
    sget-object v0, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_3a} :catch_4d
    .catchall {:try_start_35 .. :try_end_3a} :catchall_4a

    .line 261
    :goto_3a
    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_4a

    .line 265
    invoke-static {}, Lcom/alipay/sdk/app/Result;->a()Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 267
    invoke-static {}, Lcom/alipay/sdk/app/Result;->b()Ljava/lang/String;

    move-result-object v0

    .line 270
    :cond_49
    return-object v0

    .line 261
    :catchall_4a
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_4d
    move-exception v0

    goto :goto_3a
.end method

.method static synthetic a(Lcom/alipay/sdk/app/PayTask;[Lcom/alipay/sdk/protocol/ActionType;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 46
    array-length v2, p1

    move v0, v1

    :goto_3
    if-ge v0, v2, :cond_34

    aget-object v3, p1, v0

    sget-object v4, Lcom/alipay/sdk/protocol/ActionType;->b:Lcom/alipay/sdk/protocol/ActionType;

    if-ne v3, v4, :cond_1a

    invoke-virtual {v3}, Lcom/alipay/sdk/protocol/ActionType;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/sdk/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    iput-object v4, p0, Lcom/alipay/sdk/app/PayTask;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->c()V

    :cond_1a
    sget-object v4, Lcom/alipay/sdk/protocol/ActionType;->g:Lcom/alipay/sdk/protocol/ActionType;

    if-ne v3, v4, :cond_2e

    sget-object v3, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_21
    invoke-static {}, Lcom/alipay/sdk/app/Result;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/sdk/app/Result;->a(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_31

    :try_start_28
    sget-object v4, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2d} :catch_35
    .catchall {:try_start_28 .. :try_end_2d} :catchall_31

    :goto_2d
    :try_start_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_31

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catchall_31
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_34
    return-void

    :catch_35
    move-exception v4

    goto :goto_2d
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/sdk/protocol/ActionType;Ljava/lang/String;[Lcom/alipay/sdk/protocol/ActionType;)V
    .registers 16

    .prologue
    .line 312
    iget-object v8, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    new-instance v0, Lcom/alipay/sdk/app/PayTask$1;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/alipay/sdk/app/PayTask$1;-><init>(Lcom/alipay/sdk/app/PayTask;[Lcom/alipay/sdk/protocol/ActionType;[Lcom/alipay/sdk/protocol/ActionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 342
    return-void
.end method

.method private a([Lcom/alipay/sdk/protocol/ActionType;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 345
    array-length v2, p1

    move v0, v1

    :goto_3
    if-ge v0, v2, :cond_34

    aget-object v3, p1, v0

    .line 346
    sget-object v4, Lcom/alipay/sdk/protocol/ActionType;->b:Lcom/alipay/sdk/protocol/ActionType;

    if-ne v3, v4, :cond_1a

    .line 347
    invoke-virtual {v3}, Lcom/alipay/sdk/protocol/ActionType;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/sdk/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 348
    aget-object v4, v4, v1

    iput-object v4, p0, Lcom/alipay/sdk/app/PayTask;->g:Ljava/lang/String;

    .line 349
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->c()V

    .line 351
    :cond_1a
    sget-object v4, Lcom/alipay/sdk/protocol/ActionType;->g:Lcom/alipay/sdk/protocol/ActionType;

    if-ne v3, v4, :cond_2e

    .line 352
    sget-object v3, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 353
    :try_start_21
    invoke-static {}, Lcom/alipay/sdk/app/Result;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/sdk/app/Result;->a(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_31

    .line 355
    :try_start_28
    sget-object v4, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2d} :catch_35
    .catchall {:try_start_28 .. :try_end_2d} :catchall_31

    .line 357
    :goto_2d
    :try_start_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_31

    .line 345
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 357
    :catchall_31
    move-exception v0

    monitor-exit v3

    throw v0

    .line 362
    :cond_34
    return-void

    :catch_35
    move-exception v4

    goto :goto_2d
.end method

.method static synthetic a(Lcom/alipay/sdk/app/PayTask;Z)Z
    .registers 2

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/alipay/sdk/app/PayTask;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/alipay/sdk/app/PayTask;)Lcom/alipay/sdk/util/FileDownloader;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->e:Lcom/alipay/sdk/util/FileDownloader;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 151
    .line 153
    :try_start_2
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    if-eqz v0, :cond_192

    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_192

    .line 154
    new-instance v0, Lcom/alipay/sdk/widget/Loading;

    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/alipay/sdk/widget/Loading;-><init>(Landroid/app/Activity;)V

    .line 155
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/Loading;->b()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_81

    .line 161
    :goto_18
    sget-boolean v3, Lcom/alipay/sdk/cons/GlobalConstants;->n:Z

    if-eqz v3, :cond_38

    .line 162
    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v4, "https://wappaygw.alipay.com/home/exterfaceAssign.htm?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 163
    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v5, "https://wappaygw.alipay.com/home/exterfaceAssign.htm?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x35

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    .line 186
    :cond_38
    :goto_38
    new-instance v3, Lcom/alipay/sdk/data/InteractionData;

    invoke-direct {v3}, Lcom/alipay/sdk/data/InteractionData;-><init>()V

    iget-object v4, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v3, v4, v5}, Lcom/alipay/sdk/data/FrameUtils;->a(Lcom/alipay/sdk/data/InteractionData;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/alipay/sdk/data/Request;

    move-result-object v3

    .line 188
    new-instance v4, Lcom/alipay/sdk/net/RequestWrapper;

    new-instance v5, Lcom/alipay/sdk/data/InteractionData;

    invoke-direct {v5}, Lcom/alipay/sdk/data/InteractionData;-><init>()V

    invoke-direct {v4, v5}, Lcom/alipay/sdk/net/RequestWrapper;-><init>(Lcom/alipay/sdk/data/InteractionData;)V

    .line 192
    :try_start_52
    iget-object v5, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Lcom/alipay/sdk/net/RequestWrapper;->a(Landroid/content/Context;Lcom/alipay/sdk/data/Request;Z)Lcom/alipay/sdk/protocol/FrameData;

    move-result-object v3

    .line 193
    invoke-virtual {v3}, Lcom/alipay/sdk/protocol/FrameData;->c()Lorg/json/JSONObject;

    move-result-object v3

    .line 194
    const-string v4, "form"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "onload"

    invoke-static {v3, v4}, Lcom/alipay/sdk/protocol/ElementAction;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/sdk/protocol/ElementAction;

    move-result-object v3

    .line 196
    invoke-static {v3}, Lcom/alipay/sdk/protocol/ActionType;->a(Lcom/alipay/sdk/protocol/ElementAction;)[Lcom/alipay/sdk/protocol/ActionType;

    move-result-object v4

    .line 197
    array-length v5, v4

    move v3, v2

    :goto_6f
    if-ge v3, v5, :cond_e5

    aget-object v6, v4, v3

    .line 198
    sget-object v7, Lcom/alipay/sdk/protocol/ActionType;->f:Lcom/alipay/sdk/protocol/ActionType;

    if-ne v6, v7, :cond_7e

    .line 199
    invoke-virtual {v6}, Lcom/alipay/sdk/protocol/ActionType;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/sdk/util/ActionUtil;->b(Ljava/lang/String;)V
    :try_end_7e
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_52 .. :try_end_7e} :catch_15d
    .catch Lcom/alipay/sdk/exception/FailOperatingException; {:try_start_52 .. :try_end_7e} :catch_16f
    .catch Lcom/alipay/sdk/exception/AppErrorException; {:try_start_52 .. :try_end_7e} :catch_177
    .catch Lcom/alipay/sdk/exception/UnZipException; {:try_start_52 .. :try_end_7e} :catch_17f
    .catchall {:try_start_52 .. :try_end_7e} :catchall_187

    .line 197
    :cond_7e
    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    .line 158
    :catch_81
    move-exception v0

    move-object v0, v1

    goto :goto_18

    .line 166
    :cond_84
    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v4, "https://mclient.alipay.com/home/exterfaceAssign.htm?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 168
    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v5, "https://mclient.alipay.com/home/exterfaceAssign.htm?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x34

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    goto :goto_38

    .line 171
    :cond_a1
    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v4, "http://mcashier.stable.alipay.net/home/exterfaceAssign.htm?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c3

    .line 173
    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v5, "http://mcashier.stable.alipay.net/home/exterfaceAssign.htm?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    .line 176
    const-string v3, "https://mobiletestabc.alipaydev.com/mobileclientgw/stable/gateway.do"

    sput-object v3, Lcom/alipay/sdk/cons/GlobalConstants;->b:Ljava/lang/String;

    goto/16 :goto_38

    .line 177
    :cond_c3
    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v4, "http://mobileclientgw.stable.alipay.net/home/exterfaceAssign.htm?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 179
    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v5, "http://mobileclientgw.stable.alipay.net/home/exterfaceAssign.htm?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x41

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    .line 182
    const-string v3, "https://mobiletestabc.alipaydev.com/mobileclientgw/stable/gateway.do"

    sput-object v3, Lcom/alipay/sdk/cons/GlobalConstants;->b:Ljava/lang/String;

    goto/16 :goto_38

    .line 203
    :cond_e5
    if-eqz v0, :cond_ea

    .line 204
    :try_start_e7
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/Loading;->c()V

    .line 206
    :cond_ea
    array-length v3, v4

    :goto_eb
    if-ge v2, v3, :cond_13c

    aget-object v5, v4, v2

    .line 207
    sget-object v6, Lcom/alipay/sdk/protocol/ActionType;->a:Lcom/alipay/sdk/protocol/ActionType;

    if-ne v5, v6, :cond_fe

    .line 208
    invoke-direct {p0, v5}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/protocol/ActionType;)Ljava/lang/String;
    :try_end_f6
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_e7 .. :try_end_f6} :catch_15d
    .catch Lcom/alipay/sdk/exception/FailOperatingException; {:try_start_e7 .. :try_end_f6} :catch_16f
    .catch Lcom/alipay/sdk/exception/AppErrorException; {:try_start_e7 .. :try_end_f6} :catch_177
    .catch Lcom/alipay/sdk/exception/UnZipException; {:try_start_e7 .. :try_end_f6} :catch_17f
    .catchall {:try_start_e7 .. :try_end_f6} :catchall_187

    move-result-object v1

    .line 228
    if-eqz v0, :cond_fc

    .line 229
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/Loading;->c()V

    :cond_fc
    move-object v0, v1

    .line 238
    :goto_fd
    return-object v0

    .line 213
    :cond_fe
    :try_start_fe
    sget-object v6, Lcom/alipay/sdk/protocol/ActionType;->d:Lcom/alipay/sdk/protocol/ActionType;

    if-ne v5, v6, :cond_139

    .line 214
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/alipay/sdk/app/PayTask;->f:Landroid/os/Handler;

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/temp.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/sdk/app/PayTask;->i:Ljava/lang/String;

    .line 217
    invoke-direct {p0, v5}, Lcom/alipay/sdk/app/PayTask;->b(Lcom/alipay/sdk/protocol/ActionType;)Ljava/lang/String;
    :try_end_131
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_fe .. :try_end_131} :catch_15d
    .catch Lcom/alipay/sdk/exception/FailOperatingException; {:try_start_fe .. :try_end_131} :catch_16f
    .catch Lcom/alipay/sdk/exception/AppErrorException; {:try_start_fe .. :try_end_131} :catch_177
    .catch Lcom/alipay/sdk/exception/UnZipException; {:try_start_fe .. :try_end_131} :catch_17f
    .catchall {:try_start_fe .. :try_end_131} :catchall_187

    move-result-object v1

    .line 228
    if-eqz v0, :cond_137

    .line 229
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/Loading;->c()V

    :cond_137
    move-object v0, v1

    goto :goto_fd

    .line 206
    :cond_139
    add-int/lit8 v2, v2, 0x1

    goto :goto_eb

    .line 228
    :cond_13c
    if-eqz v0, :cond_18e

    .line 229
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/Loading;->c()V

    move-object v0, v1

    .line 232
    :goto_142
    if-nez v0, :cond_14e

    .line 233
    sget-object v0, Lcom/alipay/sdk/app/ResultStatus;->b:Lcom/alipay/sdk/app/ResultStatus;

    invoke-virtual {v0}, Lcom/alipay/sdk/app/ResultStatus;->a()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/sdk/app/ResultStatus;->a(I)Lcom/alipay/sdk/app/ResultStatus;

    move-result-object v0

    .line 236
    :cond_14e
    invoke-virtual {v0}, Lcom/alipay/sdk/app/ResultStatus;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/alipay/sdk/app/ResultStatus;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/sdk/app/Result;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_fd

    .line 222
    :catch_15d
    move-exception v1

    :try_start_15e
    sget-object v1, Lcom/alipay/sdk/app/ResultStatus;->d:Lcom/alipay/sdk/app/ResultStatus;

    invoke-virtual {v1}, Lcom/alipay/sdk/app/ResultStatus;->a()I

    move-result v1

    invoke-static {v1}, Lcom/alipay/sdk/app/ResultStatus;->a(I)Lcom/alipay/sdk/app/ResultStatus;
    :try_end_167
    .catchall {:try_start_15e .. :try_end_167} :catchall_187

    move-result-object v1

    .line 228
    if-eqz v0, :cond_190

    .line 229
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/Loading;->c()V

    move-object v0, v1

    goto :goto_142

    .line 228
    :catch_16f
    move-exception v2

    if-eqz v0, :cond_18e

    .line 229
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/Loading;->c()V

    move-object v0, v1

    goto :goto_142

    .line 228
    :catch_177
    move-exception v2

    if-eqz v0, :cond_18e

    .line 229
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/Loading;->c()V

    move-object v0, v1

    goto :goto_142

    .line 228
    :catch_17f
    move-exception v2

    if-eqz v0, :cond_18e

    .line 229
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/Loading;->c()V

    move-object v0, v1

    goto :goto_142

    .line 228
    :catchall_187
    move-exception v1

    if-eqz v0, :cond_18d

    .line 229
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/Loading;->c()V

    :cond_18d
    throw v1

    :cond_18e
    move-object v0, v1

    goto :goto_142

    :cond_190
    move-object v0, v1

    goto :goto_142

    :cond_192
    move-object v0, v1

    goto/16 :goto_18
.end method

.method private b(Lcom/alipay/sdk/protocol/ActionType;)Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 274
    invoke-virtual {p1}, Lcom/alipay/sdk/protocol/ActionType;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/sdk/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 279
    array-length v2, v1

    if-le v2, v3, :cond_78

    aget-object v2, v1, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_78

    .line 280
    aget-object v2, v1, v3

    invoke-static {v2, p1}, Lcom/alipay/sdk/protocol/ElementAction;->a(Ljava/lang/String;Lcom/alipay/sdk/protocol/ActionType;)Lcom/alipay/sdk/protocol/ElementAction;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/sdk/protocol/ActionType;->a(Lcom/alipay/sdk/protocol/ElementAction;)[Lcom/alipay/sdk/protocol/ActionType;

    move-result-object v2

    .line 284
    :goto_20
    array-length v3, v1

    if-le v3, v4, :cond_76

    aget-object v3, v1, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_76

    .line 285
    aget-object v0, v1, v4

    invoke-static {v0, p1}, Lcom/alipay/sdk/protocol/ElementAction;->a(Ljava/lang/String;Lcom/alipay/sdk/protocol/ActionType;)Lcom/alipay/sdk/protocol/ElementAction;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/protocol/ActionType;->a(Lcom/alipay/sdk/protocol/ElementAction;)[Lcom/alipay/sdk/protocol/ActionType;

    move-result-object v0

    move-object v3, v0

    .line 288
    :goto_36
    const/4 v0, 0x0

    aget-object v4, v1, v0

    const/4 v0, 0x1

    aget-object v5, v1, v0

    const/4 v0, 0x2

    aget-object v6, v1, v0

    const/4 v0, 0x3

    aget-object v7, v1, v0

    iget-object v8, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    new-instance v0, Lcom/alipay/sdk/app/PayTask$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/sdk/app/PayTask$1;-><init>(Lcom/alipay/sdk/app/PayTask;[Lcom/alipay/sdk/protocol/ActionType;[Lcom/alipay/sdk/protocol/ActionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 291
    sget-object v1, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 293
    :try_start_50
    sget-object v0, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_55} :catch_5f
    .catchall {:try_start_50 .. :try_end_55} :catchall_64

    .line 297
    :goto_55
    :try_start_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_64

    .line 299
    iget-boolean v0, p0, Lcom/alipay/sdk/app/PayTask;->h:Z

    if-eqz v0, :cond_67

    .line 300
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->a()Ljava/lang/String;

    move-result-object v0

    .line 306
    :cond_5e
    :goto_5e
    return-object v0

    .line 294
    :catch_5f
    move-exception v0

    :try_start_60
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    goto :goto_55

    .line 297
    :catchall_64
    move-exception v0

    monitor-exit v1

    throw v0

    .line 302
    :cond_67
    invoke-static {}, Lcom/alipay/sdk/app/Result;->a()Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 304
    invoke-static {}, Lcom/alipay/sdk/app/Result;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_5e

    :cond_76
    move-object v3, v0

    goto :goto_36

    :cond_78
    move-object v2, v0

    goto :goto_20
.end method

.method static synthetic c(Lcom/alipay/sdk/app/PayTask;)Landroid/content/BroadcastReceiver;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->k:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private c()V
    .registers 5

    .prologue
    .line 365
    new-instance v0, Lcom/alipay/sdk/widget/Loading;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/sdk/widget/Loading;-><init>(Landroid/app/Activity;)V

    .line 366
    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\u4e2d"

    const/4 v2, 0x1

    new-instance v3, Lcom/alipay/sdk/app/PayTask$2;

    invoke-direct {v3, p0, v0}, Lcom/alipay/sdk/app/PayTask$2;-><init>(Lcom/alipay/sdk/app/PayTask;Lcom/alipay/sdk/widget/Loading;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/sdk/widget/Loading;->a(Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 386
    new-instance v1, Lcom/alipay/sdk/util/FileDownloader;

    invoke-direct {v1}, Lcom/alipay/sdk/util/FileDownloader;-><init>()V

    iput-object v1, p0, Lcom/alipay/sdk/app/PayTask;->e:Lcom/alipay/sdk/util/FileDownloader;

    .line 387
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->e:Lcom/alipay/sdk/util/FileDownloader;

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/util/FileDownloader;->a(Ljava/lang/String;)V

    .line 388
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->e:Lcom/alipay/sdk/util/FileDownloader;

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/util/FileDownloader;->b(Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->e:Lcom/alipay/sdk/util/FileDownloader;

    new-instance v2, Lcom/alipay/sdk/app/PayTask$3;

    invoke-direct {v2, p0, v0}, Lcom/alipay/sdk/app/PayTask$3;-><init>(Lcom/alipay/sdk/app/PayTask;Lcom/alipay/sdk/widget/Loading;)V

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/util/FileDownloader;->a(Lcom/alipay/sdk/util/FileDownloader$IDownloadProgress;)V

    .line 408
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->e:Lcom/alipay/sdk/util/FileDownloader;

    invoke-virtual {v0}, Lcom/alipay/sdk/util/FileDownloader;->b()V

    .line 410
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 411
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 412
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 413
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 415
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->j:Ljava/lang/Runnable;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 416
    return-void
.end method

.method static synthetic d(Lcom/alipay/sdk/app/PayTask;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method private d()V
    .registers 3

    .prologue
    .line 473
    new-instance v0, Lcom/alipay/sdk/app/PayTask$6;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/PayTask$6;-><init>(Lcom/alipay/sdk/app/PayTask;)V

    .line 519
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 521
    return-void
.end method

.method static synthetic e(Lcom/alipay/sdk/app/PayTask;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/sdk/app/PayTask;)V
    .registers 3

    .prologue
    .line 46
    new-instance v0, Lcom/alipay/sdk/app/PayTask$6;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/PayTask$6;-><init>(Lcom/alipay/sdk/app/PayTask;)V

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic g(Lcom/alipay/sdk/app/PayTask;)V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->c()V

    return-void
.end method

.method static synthetic h(Lcom/alipay/sdk/app/PayTask;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->d:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/sdk/app/PayTask;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public checkAccountIfExist()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-static {}, Lcom/alipay/sdk/data/FrameUtils;->a()Lcom/alipay/sdk/data/Request;

    move-result-object v1

    .line 103
    :try_start_5
    new-instance v2, Lcom/alipay/sdk/net/RequestWrapper;

    invoke-direct {v2}, Lcom/alipay/sdk/net/RequestWrapper;-><init>()V

    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/alipay/sdk/net/RequestWrapper;->a(Landroid/content/Context;Lcom/alipay/sdk/data/Request;Z)Lcom/alipay/sdk/protocol/FrameData;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/alipay/sdk/protocol/FrameData;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "hasAccount"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_1d

    move-result v0

    .line 107
    :goto_1c
    return v0

    :catch_1d
    move-exception v1

    goto :goto_1c
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    const-string v0, "9.1.8"

    return-object v0
.end method

.method public declared-synchronized pay(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 71
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    .line 72
    invoke-static {}, Lcom/alipay/sdk/sys/GlobalContext;->a()Lcom/alipay/sdk/sys/GlobalContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/alipay/sdk/data/MspConfig;->a()Lcom/alipay/sdk/data/MspConfig;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/sdk/sys/GlobalContext;->a(Landroid/content/Context;Lcom/alipay/sdk/data/MspConfig;)V

    .line 74
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v1, "service=alipay.acquire.mr.ord.createandpay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 75
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/sdk/cons/GlobalConstants;->n:Z

    .line 77
    :cond_1d
    const-string v0, "paymethod=\"expressGateway\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 78
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->b()Ljava/lang/String;
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_54

    move-result-object v0

    .line 90
    :cond_29
    :goto_29
    monitor-exit p0

    return-object v0

    .line 81
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/sdk/util/Utils;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 82
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->a()Ljava/lang/String;

    move-result-object v0

    .line 83
    const-string v1, "failed"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 84
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    .line 85
    :cond_44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 86
    invoke-static {}, Lcom/alipay/sdk/app/Result;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    .line 90
    :cond_4f
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->b()Ljava/lang/String;
    :try_end_52
    .catchall {:try_start_2b .. :try_end_52} :catchall_54

    move-result-object v0

    goto :goto_29

    .line 71
    :catchall_54
    move-exception v0

    monitor-exit p0

    throw v0
.end method
