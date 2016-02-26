.class Lcom/duoku/platform/ui/DKContainerActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/ui/DKContainerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/ui/DKContainerActivity;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/ui/DKContainerActivity;)V
    .registers 2

    .prologue
    .line 462
    iput-object p1, p0, Lcom/duoku/platform/ui/DKContainerActivity$a;->a:Lcom/duoku/platform/ui/DKContainerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/ui/DKContainerActivity;Lcom/duoku/platform/ui/DKContainerActivity$a;)V
    .registers 3

    .prologue
    .line 462
    invoke-direct {p0, p1}, Lcom/duoku/platform/ui/DKContainerActivity$a;-><init>(Lcom/duoku/platform/ui/DKContainerActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 468
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 470
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 471
    const-string v1, "com.duoku.game.helper"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 473
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity$a;->a:Lcom/duoku/platform/ui/DKContainerActivity;

    invoke-static {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/ui/DKContainerActivity;)Lcom/duoku/platform/view/a;

    move-result-object v0

    instance-of v0, v0, Lcom/duoku/platform/view/a/e;

    if-eqz v0, :cond_32

    .line 475
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity$a;->a:Lcom/duoku/platform/ui/DKContainerActivity;

    invoke-static {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/ui/DKContainerActivity;)Lcom/duoku/platform/view/a;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/view/a/e;

    invoke-virtual {v0}, Lcom/duoku/platform/view/a/e;->c()V

    .line 491
    :cond_31
    :goto_31
    return-void

    .line 477
    :cond_32
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity$a;->a:Lcom/duoku/platform/ui/DKContainerActivity;

    invoke-static {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/ui/DKContainerActivity;)Lcom/duoku/platform/view/a;

    move-result-object v0

    instance-of v0, v0, Lcom/duoku/platform/view/a/a;

    if-eqz v0, :cond_48

    .line 479
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity$a;->a:Lcom/duoku/platform/ui/DKContainerActivity;

    invoke-static {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/ui/DKContainerActivity;)Lcom/duoku/platform/view/a;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/view/a/a;

    invoke-virtual {v0}, Lcom/duoku/platform/view/a/a;->c()V

    goto :goto_31

    .line 481
    :cond_48
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity$a;->a:Lcom/duoku/platform/ui/DKContainerActivity;

    invoke-static {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/ui/DKContainerActivity;)Lcom/duoku/platform/view/a;

    move-result-object v0

    instance-of v0, v0, Lcom/duoku/platform/view/user/a;

    if-eqz v0, :cond_5e

    .line 483
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity$a;->a:Lcom/duoku/platform/ui/DKContainerActivity;

    invoke-static {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/ui/DKContainerActivity;)Lcom/duoku/platform/view/a;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/view/user/a;

    invoke-virtual {v0}, Lcom/duoku/platform/view/user/a;->r()V

    goto :goto_31

    .line 485
    :cond_5e
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity$a;->a:Lcom/duoku/platform/ui/DKContainerActivity;

    invoke-static {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/ui/DKContainerActivity;)Lcom/duoku/platform/view/a;

    move-result-object v0

    instance-of v0, v0, Lcom/duoku/platform/view/a/f;

    if-eqz v0, :cond_31

    .line 487
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity$a;->a:Lcom/duoku/platform/ui/DKContainerActivity;

    invoke-static {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/ui/DKContainerActivity;)Lcom/duoku/platform/view/a;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/view/a/f;

    invoke-virtual {v0}, Lcom/duoku/platform/view/a/f;->n()V

    goto :goto_31
.end method
