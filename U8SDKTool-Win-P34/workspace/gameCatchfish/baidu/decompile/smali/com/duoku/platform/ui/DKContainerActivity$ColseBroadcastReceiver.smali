.class public Lcom/duoku/platform/ui/DKContainerActivity$ColseBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/ui/DKContainerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColseBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/ui/DKContainerActivity;


# direct methods
.method public constructor <init>(Lcom/duoku/platform/ui/DKContainerActivity;)V
    .registers 2

    .prologue
    .line 506
    iput-object p1, p0, Lcom/duoku/platform/ui/DKContainerActivity$ColseBroadcastReceiver;->a:Lcom/duoku/platform/ui/DKContainerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 512
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity$ColseBroadcastReceiver;->a:Lcom/duoku/platform/ui/DKContainerActivity;

    invoke-static {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/ui/DKContainerActivity;)Lcom/duoku/platform/view/a;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity$ColseBroadcastReceiver;->a:Lcom/duoku/platform/ui/DKContainerActivity;

    invoke-static {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/ui/DKContainerActivity;)Lcom/duoku/platform/view/a;

    move-result-object v0

    instance-of v0, v0, Lcom/duoku/platform/view/user/a;

    if-eqz v0, :cond_1e

    .line 514
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity$ColseBroadcastReceiver;->a:Lcom/duoku/platform/ui/DKContainerActivity;

    invoke-static {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/ui/DKContainerActivity;)Lcom/duoku/platform/view/a;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/view/user/a;

    invoke-virtual {v0}, Lcom/duoku/platform/view/user/a;->t()V

    .line 521
    :cond_1d
    :goto_1d
    return-void

    .line 517
    :cond_1e
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity$ColseBroadcastReceiver;->a:Lcom/duoku/platform/ui/DKContainerActivity;

    invoke-static {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/ui/DKContainerActivity;)Lcom/duoku/platform/view/a;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity$ColseBroadcastReceiver;->a:Lcom/duoku/platform/ui/DKContainerActivity;

    invoke-static {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/ui/DKContainerActivity;)Lcom/duoku/platform/view/a;

    move-result-object v0

    instance-of v0, v0, Lcom/duoku/platform/view/user/a;

    if-eqz v0, :cond_1d

    .line 519
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity$ColseBroadcastReceiver;->a:Lcom/duoku/platform/ui/DKContainerActivity;

    invoke-static {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/ui/DKContainerActivity;)Lcom/duoku/platform/view/a;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/view/user/a;

    invoke-virtual {v0}, Lcom/duoku/platform/view/user/a;->t()V

    goto :goto_1d
.end method
