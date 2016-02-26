.class Lcom/duoku/platform/view/user/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/g/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/user/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/user/f;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/view/user/f;)V
    .registers 2

    .prologue
    .line 117
    iput-object p1, p0, Lcom/duoku/platform/view/user/f$a;->a:Lcom/duoku/platform/view/user/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/view/user/f;Lcom/duoku/platform/view/user/f$a;)V
    .registers 3

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/user/f$a;-><init>(Lcom/duoku/platform/view/user/f;)V

    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .registers 7

    .prologue
    .line 123
    packed-switch p3, :pswitch_data_30

    .line 139
    :goto_3
    :pswitch_3
    return-void

    .line 126
    :pswitch_4
    invoke-static {}, Lcom/duoku/platform/g/b;->b()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 128
    iget-object v0, p0, Lcom/duoku/platform/view/user/f$a;->a:Lcom/duoku/platform/view/user/f;

    invoke-static {v0}, Lcom/duoku/platform/view/user/f;->a(Lcom/duoku/platform/view/user/f;)V

    .line 135
    :goto_f
    :pswitch_f
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b/c;->a(Landroid/app/Activity;)V

    .line 136
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/b/c;->e()V

    goto :goto_3

    .line 132
    :cond_2a
    iget-object v0, p0, Lcom/duoku/platform/view/user/f$a;->a:Lcom/duoku/platform/view/user/f;

    invoke-static {v0}, Lcom/duoku/platform/view/user/f;->b(Lcom/duoku/platform/view/user/f;)V

    goto :goto_f

    .line 123
    :pswitch_data_30
    .packed-switch 0x3e9
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_f
    .end packed-switch
.end method

.method public a(ILcom/duoku/platform/h/a;I)V
    .registers 8

    .prologue
    .line 144
    iget-object v0, p0, Lcom/duoku/platform/view/user/f$a;->a:Lcom/duoku/platform/view/user/f;

    invoke-static {v0}, Lcom/duoku/platform/view/user/f;->c(Lcom/duoku/platform/view/user/f;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/duoku/platform/view/user/f$a;->a:Lcom/duoku/platform/view/user/f;

    invoke-static {v0}, Lcom/duoku/platform/view/user/f;->d(Lcom/duoku/platform/view/user/f;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    check-cast p2, Lcom/duoku/platform/h/p;

    .line 147
    invoke-virtual {p2}, Lcom/duoku/platform/h/p;->a()Ljava/util/List;

    move-result-object v0

    .line 148
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5e

    .line 150
    const-string v1, "DkPlatform"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/////////////////////////////"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/duoku/platform/view/user/f$a;->a:Lcom/duoku/platform/view/user/f;

    new-instance v2, Lcom/duoku/platform/a/d;

    iget-object v3, p0, Lcom/duoku/platform/view/user/f$a;->a:Lcom/duoku/platform/view/user/f;

    invoke-static {v3}, Lcom/duoku/platform/view/user/f;->e(Lcom/duoku/platform/view/user/f;)Landroid/content/Context;

    move-result-object v3

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {v2, v3, v0}, Lcom/duoku/platform/a/d;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v1, v2}, Lcom/duoku/platform/view/user/f;->a(Lcom/duoku/platform/view/user/f;Lcom/duoku/platform/a/d;)V

    .line 152
    iget-object v0, p0, Lcom/duoku/platform/view/user/f$a;->a:Lcom/duoku/platform/view/user/f;

    invoke-static {v0}, Lcom/duoku/platform/view/user/f;->c(Lcom/duoku/platform/view/user/f;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/f$a;->a:Lcom/duoku/platform/view/user/f;

    invoke-static {v1}, Lcom/duoku/platform/view/user/f;->f(Lcom/duoku/platform/view/user/f;)Lcom/duoku/platform/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    :cond_5e
    return-void
.end method

.method public a(JJI)V
    .registers 6

    .prologue
    .line 168
    return-void
.end method

.method public a(Lcom/duoku/platform/g/f$a;I)V
    .registers 3

    .prologue
    .line 175
    return-void
.end method
