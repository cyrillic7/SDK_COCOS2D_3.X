.class final Lcom/tencent/beacon/a/k$a;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/beacon/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private synthetic b:Lcom/tencent/beacon/a/k;


# direct methods
.method private constructor <init>(Lcom/tencent/beacon/a/k;)V
    .registers 3

    .prologue
    .line 23
    iput-object p1, p0, Lcom/tencent/beacon/a/k$a;->b:Lcom/tencent/beacon/a/k;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/beacon/a/k$a;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/beacon/a/k;B)V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/tencent/beacon/a/k$a;-><init>(Lcom/tencent/beacon/a/k;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/a/k$a;->a:Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/tencent/beacon/event/p;->d()Lcom/tencent/beacon/event/p;

    move-result-object v0

    .line 30
    const-string v1, "android.intent.action.SCREEN_ON"

    iget-object v2, p0, Lcom/tencent/beacon/a/k$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 31
    const-string v1, "on screen"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    if-eqz v0, :cond_28

    iget-object v1, v0, Lcom/tencent/beacon/event/p;->d:Lcom/tencent/beacon/event/a;

    if-eqz v1, :cond_28

    .line 33
    iget-object v0, v0, Lcom/tencent/beacon/event/p;->d:Lcom/tencent/beacon/event/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/event/a;->a(Z)V

    .line 35
    :cond_28
    invoke-static {}, Lcom/tencent/beacon/a/d;->a()Lcom/tencent/beacon/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/beacon/a/k$a;->b:Lcom/tencent/beacon/a/k;

    iget-object v1, v1, Lcom/tencent/beacon/a/k;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/a/d;->a(Ljava/lang/Runnable;)V

    .line 43
    :cond_33
    :goto_33
    return-void

    .line 36
    :cond_34
    const-string v1, "android.intent.action.SCREEN_OFF"

    iget-object v2, p0, Lcom/tencent/beacon/a/k$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 37
    const-string v1, "off screen"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/beacon/e/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    if-eqz v0, :cond_33

    iget-object v1, v0, Lcom/tencent/beacon/event/p;->d:Lcom/tencent/beacon/event/a;

    if-eqz v1, :cond_33

    .line 39
    iget-object v0, v0, Lcom/tencent/beacon/event/p;->d:Lcom/tencent/beacon/event/a;

    invoke-virtual {v0, v3}, Lcom/tencent/beacon/event/a;->a(Z)V

    goto :goto_33
.end method
