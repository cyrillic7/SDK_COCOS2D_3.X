.class Lcom/duoku/platform/view/a/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/g/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a/f;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/view/a/f;)V
    .registers 2

    .prologue
    .line 831
    iput-object p1, p0, Lcom/duoku/platform/view/a/f$b;->a:Lcom/duoku/platform/view/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/view/a/f;Lcom/duoku/platform/view/a/f$b;)V
    .registers 3

    .prologue
    .line 831
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/a/f$b;-><init>(Lcom/duoku/platform/view/a/f;)V

    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 876
    const/16 v0, 0x441

    if-ne v0, p3, :cond_1c

    .line 878
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$b;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/view/a/f;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/f$b;->a:Lcom/duoku/platform/view/a/f;

    const-string v2, "dk_message_get_again"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/view/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 879
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$b;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0, v3}, Lcom/duoku/platform/view/a/f;->d(Lcom/duoku/platform/view/a/f;Z)V

    .line 896
    :goto_1b
    return-void

    .line 881
    :cond_1c
    const/16 v0, 0x443

    if-ne v0, p3, :cond_37

    .line 883
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$b;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/view/a/f;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/f$b;->a:Lcom/duoku/platform/view/a/f;

    const-string v2, "dk_message_get_passed"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/view/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$b;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0, v3}, Lcom/duoku/platform/view/a/f;->d(Lcom/duoku/platform/view/a/f;Z)V

    goto :goto_1b

    .line 886
    :cond_37
    const/16 v0, 0x3ec

    if-ne p3, v0, :cond_56

    .line 888
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b/c;->a(Landroid/app/Activity;)V

    .line 889
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/b/c;->e()V

    goto :goto_1b

    .line 893
    :cond_56
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$b;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/view/a/f;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/f$b;->a:Lcom/duoku/platform/view/a/f;

    const-string v2, "dk_message_get_fail"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/view/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 894
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$b;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0, v3}, Lcom/duoku/platform/view/a/f;->d(Lcom/duoku/platform/view/a/f;Z)V

    goto :goto_1b
.end method

.method public a(ILcom/duoku/platform/h/a;I)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 837
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$b;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/view/a/f;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/view/a/f$b;->a:Lcom/duoku/platform/view/a/f;

    const-string v3, "dk_message_get_success"

    invoke-virtual {v2, v3}, Lcom/duoku/platform/view/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/duoku/platform/util/p;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 839
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$b;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->s(Lcom/duoku/platform/view/a/f;)Landroid/widget/Button;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/view/a/f$b;->a:Lcom/duoku/platform/view/a/f;

    const-string v3, "dk_message_bt_got"

    invoke-virtual {v2, v3}, Lcom/duoku/platform/view/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 840
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$b;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->s(Lcom/duoku/platform/view/a/f;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 841
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$b;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->t(Lcom/duoku/platform/view/a/f;)Landroid/widget/Button;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 842
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$b;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->u(Lcom/duoku/platform/view/a/f;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 845
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$b;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->d(Lcom/duoku/platform/view/a/f;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/view/a/f$b;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v2}, Lcom/duoku/platform/view/a/f;->v(Lcom/duoku/platform/view/a/f;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/g;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/a/g;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_7a

    .line 857
    :goto_58
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$b;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->d(Lcom/duoku/platform/view/a/f;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/view/a/f$b;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v2}, Lcom/duoku/platform/view/a/f;->v(Lcom/duoku/platform/view/a/f;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/g;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/a/g;->a(I)V

    .line 859
    :cond_6d
    return-void

    .line 848
    :sswitch_6e
    const/16 v0, 0x9

    move v1, v0

    .line 849
    goto :goto_58

    .line 851
    :sswitch_72
    const/16 v0, 0xc

    move v1, v0

    .line 852
    goto :goto_58

    .line 854
    :sswitch_76
    const/16 v0, 0xf

    move v1, v0

    goto :goto_58

    .line 845
    :sswitch_data_7a
    .sparse-switch
        0x8 -> :sswitch_6e
        0xb -> :sswitch_72
        0xe -> :sswitch_76
    .end sparse-switch
.end method

.method public a(JJI)V
    .registers 6

    .prologue
    .line 871
    return-void
.end method

.method public a(Lcom/duoku/platform/g/f$a;I)V
    .registers 3

    .prologue
    .line 865
    return-void
.end method
