.class Lcom/duoku/platform/ui/b/c$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/ui/b/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/ui/b/c;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/duoku/platform/ui/b/c;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/ui/b/c$11;->a:Lcom/duoku/platform/ui/b/c;

    iput-object p2, p0, Lcom/duoku/platform/ui/b/c$11;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/duoku/platform/ui/b/c$11;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/duoku/platform/ui/b/c$11;->d:Landroid/app/Dialog;

    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 754
    invoke-static {}, Lcom/duoku/platform/util/f;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/ui/b/c$11;->a:Lcom/duoku/platform/ui/b/c;

    invoke-static {v1}, Lcom/duoku/platform/ui/b/c;->a(Lcom/duoku/platform/ui/b/c;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/ui/b/c$11;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/duoku/platform/util/f;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 756
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c$11;->a:Lcom/duoku/platform/ui/b/c;

    invoke-static {v0}, Lcom/duoku/platform/ui/b/c;->a(Lcom/duoku/platform/ui/b/c;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/util/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/util/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 780
    :goto_20
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c$11;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 781
    return-void

    .line 760
    :cond_26
    invoke-static {}, Lcom/duoku/platform/g/b;->b()Z

    move-result v0

    if-nez v0, :cond_50

    .line 762
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c$11;->a:Lcom/duoku/platform/ui/b/c;

    invoke-static {v0}, Lcom/duoku/platform/ui/b/c;->a(Lcom/duoku/platform/ui/b/c;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/ui/b/c$11;->a:Lcom/duoku/platform/ui/b/c;

    invoke-static {v1}, Lcom/duoku/platform/ui/b/c;->a(Lcom/duoku/platform/ui/b/c;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/ui/b/c$11;->a:Lcom/duoku/platform/ui/b/c;

    invoke-static {v2}, Lcom/duoku/platform/ui/b/c;->a(Lcom/duoku/platform/ui/b/c;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "dk_tip_payment_network_error"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_20

    .line 766
    :cond_50
    invoke-static {}, Lcom/duoku/platform/util/f;->d()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 768
    invoke-static {v4}, Lcom/duoku/platform/util/f;->a(Z)V

    .line 769
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c$11;->a:Lcom/duoku/platform/ui/b/c;

    invoke-static {v0}, Lcom/duoku/platform/ui/b/c;->a(Lcom/duoku/platform/ui/b/c;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/ui/b/c$11;->a:Lcom/duoku/platform/ui/b/c;

    invoke-static {v1}, Lcom/duoku/platform/ui/b/c;->a(Lcom/duoku/platform/ui/b/c;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/ui/b/c$11;->a:Lcom/duoku/platform/ui/b/c;

    invoke-static {v2}, Lcom/duoku/platform/ui/b/c;->a(Lcom/duoku/platform/ui/b/c;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "dk_toast_down_text"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_20

    .line 773
    :cond_81
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c$11;->a:Lcom/duoku/platform/ui/b/c;

    invoke-static {v0}, Lcom/duoku/platform/ui/b/c;->a(Lcom/duoku/platform/ui/b/c;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/ui/b/c$11;->a:Lcom/duoku/platform/ui/b/c;

    invoke-static {v1}, Lcom/duoku/platform/ui/b/c;->a(Lcom/duoku/platform/ui/b/c;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/ui/b/c$11;->a:Lcom/duoku/platform/ui/b/c;

    invoke-static {v2}, Lcom/duoku/platform/ui/b/c;->a(Lcom/duoku/platform/ui/b/c;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "dk_toast_down_text"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c$11;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/duoku/platform/util/f;->a(Ljava/lang/String;)V

    .line 775
    invoke-static {v4}, Lcom/duoku/platform/util/f;->a(Z)V

    .line 776
    invoke-static {}, Lcom/duoku/platform/util/f;->c()V

    goto/16 :goto_20
.end method
