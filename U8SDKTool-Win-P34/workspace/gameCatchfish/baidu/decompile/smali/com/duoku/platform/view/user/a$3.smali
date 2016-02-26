.class Lcom/duoku/platform/view/user/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/g/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/user/a;->y()V
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
    iput-object p1, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    .line 954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .registers 8

    .prologue
    const/16 v2, 0x8

    .line 961
    const/16 v0, 0x3ec

    if-ne p3, v0, :cond_21

    .line 963
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b/c;->a(Landroid/app/Activity;)V

    .line 964
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/b/c;->e()V

    .line 974
    :goto_20
    return-void

    .line 968
    :cond_21
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->u(Lcom/duoku/platform/view/user/a;)V

    .line 969
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->v(Lcom/duoku/platform/view/user/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 970
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->r:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 971
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->a:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_20
.end method

.method public a(ILcom/duoku/platform/h/a;I)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 993
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->v(Lcom/duoku/platform/view/user/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 994
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->a:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 995
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->r:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 996
    check-cast p2, Lcom/duoku/platform/h/h;

    .line 998
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->w(Lcom/duoku/platform/view/user/a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/duoku/platform/h/h;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->x(Lcom/duoku/platform/view/user/a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/duoku/platform/h/h;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1000
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->y(Lcom/duoku/platform/view/user/a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/duoku/platform/h/h;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1002
    invoke-virtual {p2}, Lcom/duoku/platform/h/h;->i()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/view/user/a;->c:Ljava/lang/String;

    .line 1004
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    invoke-virtual {p2}, Lcom/duoku/platform/h/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/user/a;->a(Lcom/duoku/platform/view/user/a;Ljava/lang/String;)V

    .line 1005
    invoke-virtual {p2}, Lcom/duoku/platform/h/h;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/view/user/a;->i:Ljava/lang/String;

    .line 1006
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    invoke-virtual {p2}, Lcom/duoku/platform/h/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/user/a;->b(Lcom/duoku/platform/view/user/a;Ljava/lang/String;)V

    .line 1008
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    invoke-virtual {p2}, Lcom/duoku/platform/h/h;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/user/a;->c(Lcom/duoku/platform/view/user/a;Ljava/lang/String;)V

    .line 1009
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    invoke-virtual {p2}, Lcom/duoku/platform/h/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/user/a;->d(Lcom/duoku/platform/view/user/a;Ljava/lang/String;)V

    .line 1010
    const-string v0, "1"

    iget-object v1, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v1}, Lcom/duoku/platform/view/user/a;->z(Lcom/duoku/platform/view/user/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 1012
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->A(Lcom/duoku/platform/view/user/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1013
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->B(Lcom/duoku/platform/view/user/a;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v1}, Lcom/duoku/platform/view/user/a;->C(Lcom/duoku/platform/view/user/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1014
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->d(Lcom/duoku/platform/view/user/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    const-string v1, "notificationurl"

    iget-object v2, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v2}, Lcom/duoku/platform/view/user/a;->D(Lcom/duoku/platform/view/user/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1016
    :cond_ae
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    invoke-virtual {p2}, Lcom/duoku/platform/h/h;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/user/a;->e(Lcom/duoku/platform/view/user/a;Ljava/lang/String;)V

    .line 1017
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    invoke-virtual {p2}, Lcom/duoku/platform/h/h;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/user/a;->f(Lcom/duoku/platform/view/user/a;Ljava/lang/String;)V

    .line 1018
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    invoke-virtual {p2}, Lcom/duoku/platform/h/h;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/user/a;->g(Lcom/duoku/platform/view/user/a;Ljava/lang/String;)V

    .line 1019
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    invoke-virtual {p2}, Lcom/duoku/platform/h/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/user/a;->h(Lcom/duoku/platform/view/user/a;Ljava/lang/String;)V

    .line 1020
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->E(Lcom/duoku/platform/view/user/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 1022
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    invoke-virtual {p2}, Lcom/duoku/platform/h/h;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/user/a;->i(Lcom/duoku/platform/view/user/a;Ljava/lang/String;)V

    .line 1023
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->F(Lcom/duoku/platform/view/user/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 1025
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->G(Lcom/duoku/platform/view/user/a;)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_10e

    .line 1027
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->H(Lcom/duoku/platform/view/user/a;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v1}, Lcom/duoku/platform/view/user/a;->G(Lcom/duoku/platform/view/user/a;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1033
    :cond_10e
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$3;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->u(Lcom/duoku/platform/view/user/a;)V

    .line 1034
    return-void
.end method

.method public a(JJI)V
    .registers 6

    .prologue
    .line 988
    return-void
.end method

.method public a(Lcom/duoku/platform/g/f$a;I)V
    .registers 3

    .prologue
    .line 981
    return-void
.end method
