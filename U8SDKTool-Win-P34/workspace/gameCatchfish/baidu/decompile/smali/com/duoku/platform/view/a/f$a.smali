.class Lcom/duoku/platform/view/a/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/duoku/platform/ui/a/g;

.field final synthetic b:Lcom/duoku/platform/view/a/f;


# direct methods
.method public constructor <init>(Lcom/duoku/platform/view/a/f;Lcom/duoku/platform/ui/a/g;)V
    .registers 4

    .prologue
    .line 662
    iput-object p1, p0, Lcom/duoku/platform/view/a/f$a;->b:Lcom/duoku/platform/view/a/f;

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/view/a/f$a;->a:Lcom/duoku/platform/ui/a/g;

    .line 663
    iput-object p2, p0, Lcom/duoku/platform/view/a/f$a;->a:Lcom/duoku/platform/ui/a/g;

    .line 664
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 669
    invoke-static {}, Lcom/duoku/platform/ui/b/d;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 702
    :goto_6
    return-void

    .line 671
    :cond_7
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$a;->b:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->r(Lcom/duoku/platform/view/a/f;)I

    move-result v0

    packed-switch v0, :pswitch_data_60

    :pswitch_10
    goto :goto_6

    .line 676
    :pswitch_11
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$a;->b:Lcom/duoku/platform/view/a/f;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/duoku/platform/view/a/f$a;->b:Lcom/duoku/platform/view/a/f;

    iget-object v3, p0, Lcom/duoku/platform/view/a/f$a;->a:Lcom/duoku/platform/ui/a/g;

    invoke-static {v0, v1, v2, v3}, Lcom/duoku/platform/view/a/f;->a(Lcom/duoku/platform/view/a/f;ILcom/duoku/platform/view/a;Lcom/duoku/platform/ui/a/g;)V

    goto :goto_6

    .line 679
    :pswitch_1c
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$a;->b:Lcom/duoku/platform/view/a/f;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/duoku/platform/view/a/f$a;->b:Lcom/duoku/platform/view/a/f;

    iget-object v3, p0, Lcom/duoku/platform/view/a/f$a;->a:Lcom/duoku/platform/ui/a/g;

    invoke-static {v0, v1, v2, v3}, Lcom/duoku/platform/view/a/f;->a(Lcom/duoku/platform/view/a/f;ILcom/duoku/platform/view/a;Lcom/duoku/platform/ui/a/g;)V

    goto :goto_6

    .line 682
    :pswitch_27
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$a;->b:Lcom/duoku/platform/view/a/f;

    iget-object v1, p0, Lcom/duoku/platform/view/a/f$a;->a:Lcom/duoku/platform/ui/a/g;

    invoke-static {v0, v1}, Lcom/duoku/platform/view/a/f;->b(Lcom/duoku/platform/view/a/f;Lcom/duoku/platform/ui/a/g;)V

    goto :goto_6

    .line 685
    :pswitch_2f
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$a;->b:Lcom/duoku/platform/view/a/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/a/f;->c(Lcom/duoku/platform/view/a/f;Z)V

    .line 686
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$a;->b:Lcom/duoku/platform/view/a/f;

    iget-object v1, p0, Lcom/duoku/platform/view/a/f$a;->a:Lcom/duoku/platform/ui/a/g;

    invoke-static {v0, v1}, Lcom/duoku/platform/view/a/f;->c(Lcom/duoku/platform/view/a/f;Lcom/duoku/platform/ui/a/g;)V

    goto :goto_6

    .line 689
    :pswitch_3d
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$a;->b:Lcom/duoku/platform/view/a/f;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/duoku/platform/view/a/f$a;->b:Lcom/duoku/platform/view/a/f;

    iget-object v3, p0, Lcom/duoku/platform/view/a/f$a;->a:Lcom/duoku/platform/ui/a/g;

    invoke-static {v0, v1, v2, v3}, Lcom/duoku/platform/view/a/f;->a(Lcom/duoku/platform/view/a/f;ILcom/duoku/platform/view/a;Lcom/duoku/platform/ui/a/g;)V

    goto :goto_6

    .line 692
    :pswitch_48
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$a;->b:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/view/a/f;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/f$a;->a:Lcom/duoku/platform/ui/a/g;

    invoke-virtual {v1}, Lcom/duoku/platform/ui/a/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/util/f;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6

    .line 697
    :pswitch_58
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$a;->b:Lcom/duoku/platform/view/a/f;

    iget-object v1, p0, Lcom/duoku/platform/view/a/f$a;->a:Lcom/duoku/platform/ui/a/g;

    invoke-static {v0, v1}, Lcom/duoku/platform/view/a/f;->d(Lcom/duoku/platform/view/a/f;Lcom/duoku/platform/ui/a/g;)V

    goto :goto_6

    .line 671
    :pswitch_data_60
    .packed-switch 0x2
        :pswitch_11
        :pswitch_1c
        :pswitch_27
        :pswitch_2f
        :pswitch_3d
        :pswitch_48
        :pswitch_58
        :pswitch_10
        :pswitch_10
        :pswitch_58
        :pswitch_10
        :pswitch_10
        :pswitch_58
    .end packed-switch
.end method
