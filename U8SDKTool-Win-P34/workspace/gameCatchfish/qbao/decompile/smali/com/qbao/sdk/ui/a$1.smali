.class Lcom/qbao/sdk/ui/a$1;
.super Ljava/lang/Object;
.source "BaseDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/a;->aD()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ei:Lcom/qbao/sdk/ui/a;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/a;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/a$1;->ei:Lcom/qbao/sdk/ui/a;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5

    .prologue
    .line 165
    iget-object v0, p0, Lcom/qbao/sdk/ui/a$1;->ei:Lcom/qbao/sdk/ui/a;

    invoke-static {v0}, Lcom/qbao/sdk/ui/a;->a(Lcom/qbao/sdk/ui/a;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 172
    :goto_c
    return-void

    .line 167
    :cond_d
    iget-object v0, p0, Lcom/qbao/sdk/ui/a$1;->ei:Lcom/qbao/sdk/ui/a;

    invoke-static {v0}, Lcom/qbao/sdk/ui/a;->a(Lcom/qbao/sdk/ui/a;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_27

    .line 171
    iget-object v0, p0, Lcom/qbao/sdk/ui/a$1;->ei:Lcom/qbao/sdk/ui/a;

    invoke-static {v0}, Lcom/qbao/sdk/ui/a;->a(Lcom/qbao/sdk/ui/a;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    goto :goto_c

    .line 167
    :cond_27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 168
    instance-of v2, v0, Lcom/qbao/sdk/ui/BaseView;

    if-eqz v2, :cond_17

    .line 169
    check-cast v0, Lcom/qbao/sdk/ui/BaseView;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/BaseView;->finish()V

    goto :goto_17
.end method
