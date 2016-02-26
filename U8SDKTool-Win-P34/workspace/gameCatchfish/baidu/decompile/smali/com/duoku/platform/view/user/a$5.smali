.class Lcom/duoku/platform/view/user/a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/g/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/user/a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/user/a;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/user/a;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/user/a$5;->a:Lcom/duoku/platform/view/user/a;

    .line 1558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .registers 9

    .prologue
    .line 1589
    sparse-switch p3, :sswitch_data_56

    .line 1610
    :goto_3
    return-void

    .line 1594
    :sswitch_4
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$5;->a:Lcom/duoku/platform/view/user/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duoku/platform/view/user/a;->a(Lcom/duoku/platform/view/user/a;Z)V

    .line 1595
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$5;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->d(Lcom/duoku/platform/view/user/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u7a0d\u5019\u91cd\u8bd5\uff01"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 1600
    :sswitch_16
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$5;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->d(Lcom/duoku/platform/view/user/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/a$5;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v1}, Lcom/duoku/platform/view/user/a;->d(Lcom/duoku/platform/view/user/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/user/a$5;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v2}, Lcom/duoku/platform/view/user/a;->d(Lcom/duoku/platform/view/user/a;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "dk_identify_fail"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 1605
    :sswitch_3a
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b/c;->a(Landroid/app/Activity;)V

    .line 1606
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/b/c;->e()V

    goto :goto_3

    .line 1589
    nop

    :sswitch_data_56
    .sparse-switch
        0x1f8 -> :sswitch_4
        0x3e8 -> :sswitch_4
        0x3e9 -> :sswitch_16
        0x3ec -> :sswitch_3a
    .end sparse-switch
.end method

.method public a(ILcom/duoku/platform/h/a;I)V
    .registers 7

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$5;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->d(Lcom/duoku/platform/view/user/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/a$5;->a:Lcom/duoku/platform/view/user/a;

    const-string v2, "dk_identify_sucess"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/view/user/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1566
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/a$5;->a:Lcom/duoku/platform/view/user/a;

    invoke-virtual {v1}, Lcom/duoku/platform/view/user/a;->f()Lcom/duoku/platform/c/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    .line 1567
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->a()V

    .line 1568
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$5;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->d(Lcom/duoku/platform/view/user/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    .line 1569
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "identification"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/view/user/a$5;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v2}, Lcom/duoku/platform/view/user/a;->I(Lcom/duoku/platform/view/user/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;Z)Z

    .line 1570
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "identifyname"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/view/user/a$5;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v2}, Lcom/duoku/platform/view/user/a;->I(Lcom/duoku/platform/view/user/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/user/a$5;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v2}, Lcom/duoku/platform/view/user/a;->J(Lcom/duoku/platform/view/user/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1571
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "identifynumber"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoku/platform/view/user/a$5;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v2}, Lcom/duoku/platform/view/user/a;->I(Lcom/duoku/platform/view/user/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/user/a$5;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v2}, Lcom/duoku/platform/view/user/a;->K(Lcom/duoku/platform/view/user/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1572
    return-void
.end method

.method public a(JJI)V
    .registers 6

    .prologue
    .line 1584
    return-void
.end method

.method public a(Lcom/duoku/platform/g/f$a;I)V
    .registers 3

    .prologue
    .line 1578
    return-void
.end method
