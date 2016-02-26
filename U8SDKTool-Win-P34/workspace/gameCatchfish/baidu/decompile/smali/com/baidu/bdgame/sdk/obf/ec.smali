.class public Lcom/baidu/bdgame/sdk/obf/ec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/i;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Lcom/baidu/bdgame/sdk/obf/ed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/bdgame/sdk/obf/ed",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ed;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/ed",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "UnionPayManager"

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ec;->a:Ljava/lang/String;

    .line 26
    const-string v0, "00"

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ec;->b:Ljava/lang/String;

    .line 28
    const-string v0, "success"

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ec;->c:Ljava/lang/String;

    .line 29
    const-string v0, "fail"

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ec;->d:Ljava/lang/String;

    .line 30
    const-string v0, "cancel"

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ec;->e:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ec;->g:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/ec;->f:Lcom/baidu/bdgame/sdk/obf/ed;

    .line 63
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ec;->h:Landroid/content/Context;

    .line 64
    return-void
.end method

.method public static declared-synchronized a(Landroid/app/Activity;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ed;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/ed",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    const-class v1, Lcom/baidu/bdgame/sdk/obf/ec;

    monitor-enter v1

    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 41
    if-eqz p2, :cond_1d

    .line 42
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "bdp_null_orderinfo"

    invoke-static {p0, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/baidu/bdgame/sdk/obf/ed;->b(ILjava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_35

    .line 55
    :cond_1d
    :goto_1d
    monitor-exit v1

    return-void

    .line 47
    :cond_1f
    :try_start_1f
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ec;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ec;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ed;)V

    .line 50
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 51
    const-class v3, Lcom/baidu/platformsdk/AssistActivity;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 52
    invoke-static {v0}, Lcom/baidu/platformsdk/AssistActivity;->a(Lcom/baidu/bdgame/sdk/obf/i;)V

    .line 53
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_35

    goto :goto_1d

    .line 40
    :catchall_35
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Landroid/app/Activity;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 114
    const-class v1, Lcom/unionpay/uppay/PayActivity;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/ec;->g:Ljava/lang/String;

    const-string v5, "00"

    move-object v0, p1

    move-object v3, v2

    invoke-static/range {v0 .. v5}, Lcom/unionpay/UPPayAssistEx;->startPayByJAR(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ec;->b(Landroid/app/Activity;)V

    .line 70
    return-void
.end method

.method public a(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .registers 11

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/4 v5, 0x1

    .line 77
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ec;->f:Lcom/baidu/bdgame/sdk/obf/ed;

    if-nez v3, :cond_9

    .line 106
    :goto_8
    return v5

    .line 81
    :cond_9
    if-eqz p4, :cond_11

    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_17

    .line 82
    :cond_11
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ec;->f:Lcom/baidu/bdgame/sdk/obf/ed;

    invoke-virtual {v1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/ed;->b(ILjava/lang/Object;)V

    goto :goto_8

    .line 90
    :cond_17
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "pay_result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    const-string v4, "UnionPayManager"

    invoke-static {v4, v3}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    if-eqz v3, :cond_30

    const-string v4, "success"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    :cond_30
    move v1, v2

    .line 105
    :cond_31
    :goto_31
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ec;->f:Lcom/baidu/bdgame/sdk/obf/ed;

    invoke-virtual {v2, v1, v0}, Lcom/baidu/bdgame/sdk/obf/ed;->b(ILjava/lang/Object;)V

    goto :goto_8

    .line 97
    :cond_37
    const-string v2, "fail"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 98
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ec;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ec;->h:Landroid/content/Context;

    const-string v3, "bdp_passport_pay_fail"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    .line 100
    :cond_52
    const-string v2, "cancel"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 101
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ec;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ec;->h:Landroid/content/Context;

    const-string v3, "bdp_passport_pay_cancel"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_31
.end method
