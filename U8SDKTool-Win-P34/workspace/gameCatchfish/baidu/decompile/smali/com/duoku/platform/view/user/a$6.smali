.class Lcom/duoku/platform/view/user/a$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/user/a;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/n",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/user/a;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/user/a;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/user/a$6;->a:Lcom/duoku/platform/view/user/a;

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Double;)V
    .registers 8

    .prologue
    .line 523
    if-nez p1, :cond_5c

    .line 525
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$6;->a:Lcom/duoku/platform/view/user/a;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/duoku/platform/view/user/a;->a(Lcom/duoku/platform/view/user/a;D)V

    .line 526
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$6;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->h(Lcom/duoku/platform/view/user/a;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/duoku/platform/view/user/a$6;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v2}, Lcom/duoku/platform/view/user/a;->h(Lcom/duoku/platform/view/user/a;)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-double v2, v2

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_5d

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a$6;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v1}, Lcom/duoku/platform/view/user/a;->h(Lcom/duoku/platform/view/user/a;)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 527
    :goto_34
    iget-object v1, p0, Lcom/duoku/platform/view/user/a$6;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v1}, Lcom/duoku/platform/view/user/a;->i(Lcom/duoku/platform/view/user/a;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/view/user/a$6;->a:Lcom/duoku/platform/view/user/a;

    const-string v3, "dk_dou"

    invoke-virtual {v2, v3}, Lcom/duoku/platform/view/user/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    :cond_5c
    return-void

    .line 526
    :cond_5d
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/duoku/platform/view/user/a$6;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v1}, Lcom/duoku/platform/view/user/a;->h(Lcom/duoku/platform/view/user/a;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_34
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 1
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2, p3}, Lcom/duoku/platform/view/user/a$6;->a(ILjava/lang/String;Ljava/lang/Double;)V

    return-void
.end method
