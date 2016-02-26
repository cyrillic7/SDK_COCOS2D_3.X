.class public abstract Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/util/DkNoProguard;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/DkPageCallbackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AdPageListener"
.end annotation


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;->context:Landroid/content/Context;

    .line 31
    # getter for: Lcom/duoku/platform/DkPageCallbackListener;->isShowing:Z
    invoke-static {}, Lcom/duoku/platform/DkPageCallbackListener;->access$0()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 33
    invoke-virtual {p0}, Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;->closeView()V

    .line 35
    :cond_e
    # getter for: Lcom/duoku/platform/DkPageCallbackListener;->adDialogView:Lcom/duoku/platform/view/c;
    invoke-static {}, Lcom/duoku/platform/DkPageCallbackListener;->access$1()Lcom/duoku/platform/view/c;

    move-result-object v0

    if-eqz v0, :cond_21

    # getter for: Lcom/duoku/platform/DkPageCallbackListener;->adDialogView:Lcom/duoku/platform/view/c;
    invoke-static {}, Lcom/duoku/platform/DkPageCallbackListener;->access$1()Lcom/duoku/platform/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/view/c;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 37
    invoke-virtual {p0}, Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;->closeView()V

    .line 39
    :cond_21
    new-instance v0, Lcom/duoku/platform/DkPageCallbackListener$AdPageListener$1;

    invoke-direct {v0, p0, p1}, Lcom/duoku/platform/DkPageCallbackListener$AdPageListener$1;-><init>(Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/duoku/platform/DkPageCallbackListener;->access$2(Lcom/duoku/platform/view/c;)V

    .line 49
    # getter for: Lcom/duoku/platform/DkPageCallbackListener;->adDialogView:Lcom/duoku/platform/view/c;
    invoke-static {}, Lcom/duoku/platform/DkPageCallbackListener;->access$1()Lcom/duoku/platform/view/c;

    move-result-object v0

    new-instance v1, Lcom/duoku/platform/DkPageCallbackListener$AdPageListener$2;

    invoke-direct {v1, p0, p1}, Lcom/duoku/platform/DkPageCallbackListener$AdPageListener$2;-><init>(Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/duoku/platform/view/c;->setContentView(Landroid/view/View;)V

    .line 68
    return-void
.end method


# virtual methods
.method public closeView()V
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 94
    # getter for: Lcom/duoku/platform/DkPageCallbackListener;->adDialogView:Lcom/duoku/platform/view/c;
    invoke-static {}, Lcom/duoku/platform/DkPageCallbackListener;->access$1()Lcom/duoku/platform/view/c;

    move-result-object v0

    if-eqz v0, :cond_2b

    # getter for: Lcom/duoku/platform/DkPageCallbackListener;->adDialogView:Lcom/duoku/platform/view/c;
    invoke-static {}, Lcom/duoku/platform/DkPageCallbackListener;->access$1()Lcom/duoku/platform/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/view/c;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 98
    :try_start_20
    # getter for: Lcom/duoku/platform/DkPageCallbackListener;->adDialogView:Lcom/duoku/platform/view/c;
    invoke-static {}, Lcom/duoku/platform/DkPageCallbackListener;->access$1()Lcom/duoku/platform/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/view/c;->cancel()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_2c

    .line 104
    :goto_27
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/duoku/platform/DkPageCallbackListener;->access$3(Z)V

    .line 107
    :cond_2b
    return-void

    .line 100
    :catch_2c
    move-exception v0

    goto :goto_27
.end method

.method public abstract onComplete()V
.end method

.method public showView()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 72
    iget-object v0, p0, Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_35

    .line 74
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    const-string v1, "ad_visibility"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/o;->b(Ljava/lang/String;)I

    move-result v0

    .line 75
    # getter for: Lcom/duoku/platform/DkPageCallbackListener;->adDialogView:Lcom/duoku/platform/view/c;
    invoke-static {}, Lcom/duoku/platform/DkPageCallbackListener;->access$1()Lcom/duoku/platform/view/c;

    move-result-object v1

    if-eqz v1, :cond_35

    if-ne v0, v2, :cond_35

    .line 79
    :try_start_2b
    # getter for: Lcom/duoku/platform/DkPageCallbackListener;->adDialogView:Lcom/duoku/platform/view/c;
    invoke-static {}, Lcom/duoku/platform/DkPageCallbackListener;->access$1()Lcom/duoku/platform/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/view/c;->show()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_32} :catch_36

    .line 85
    :goto_32
    invoke-static {v2}, Lcom/duoku/platform/DkPageCallbackListener;->access$3(Z)V

    .line 88
    :cond_35
    return-void

    .line 81
    :catch_36
    move-exception v0

    goto :goto_32
.end method
