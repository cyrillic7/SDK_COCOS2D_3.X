.class Lcom/duoku/platform/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/g/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/b;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/b;

.field private final synthetic b:Lcom/duoku/platform/e/a;

.field private final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/duoku/platform/b;Lcom/duoku/platform/e/a;Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/b$3;->a:Lcom/duoku/platform/b;

    iput-object p2, p0, Lcom/duoku/platform/b$3;->b:Lcom/duoku/platform/e/a;

    iput-object p3, p0, Lcom/duoku/platform/b$3;->c:Landroid/app/Activity;

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .registers 6

    .prologue
    .line 707
    packed-switch p3, :pswitch_data_1c

    .line 720
    iget-object v0, p0, Lcom/duoku/platform/b$3;->b:Lcom/duoku/platform/e/a;

    invoke-virtual {v0}, Lcom/duoku/platform/e/a;->dismiss()V

    .line 723
    :goto_8
    return-void

    .line 710
    :pswitch_9
    invoke-static {}, Lcom/duoku/platform/g/b;->b()Z

    move-result v0

    if-nez v0, :cond_15

    .line 712
    iget-object v0, p0, Lcom/duoku/platform/b$3;->b:Lcom/duoku/platform/e/a;

    invoke-virtual {v0}, Lcom/duoku/platform/e/a;->dismiss()V

    goto :goto_8

    .line 716
    :cond_15
    iget-object v0, p0, Lcom/duoku/platform/b$3;->b:Lcom/duoku/platform/e/a;

    invoke-virtual {v0}, Lcom/duoku/platform/e/a;->dismiss()V

    goto :goto_8

    .line 707
    nop

    :pswitch_data_1c
    .packed-switch 0x3e9
        :pswitch_9
    .end packed-switch
.end method

.method public a(ILcom/duoku/platform/h/a;I)V
    .registers 10

    .prologue
    .line 728
    iget-object v0, p0, Lcom/duoku/platform/b$3;->b:Lcom/duoku/platform/e/a;

    invoke-virtual {v0}, Lcom/duoku/platform/e/a;->dismiss()V

    .line 729
    check-cast p2, Lcom/duoku/platform/ui/a/c;

    .line 730
    invoke-virtual {p2}, Lcom/duoku/platform/ui/a/c;->b()Ljava/util/List;

    move-result-object v0

    .line 731
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1f

    .line 733
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/b$3;->c:Landroid/app/Activity;

    const-wide v4, 0x3fe999999999999aL

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/duoku/platform/ui/b/c;->a(Landroid/app/Activity;Ljava/util/List;D)V

    .line 735
    :cond_1f
    iget-object v0, p0, Lcom/duoku/platform/b$3;->a:Lcom/duoku/platform/b;

    iget-object v1, p0, Lcom/duoku/platform/b$3;->c:Landroid/app/Activity;

    invoke-static {v0, v1, p2}, Lcom/duoku/platform/b;->a(Lcom/duoku/platform/b;Landroid/app/Activity;Lcom/duoku/platform/ui/a/c;)V

    .line 737
    return-void
.end method

.method public a(JJI)V
    .registers 6

    .prologue
    .line 749
    return-void
.end method

.method public a(Lcom/duoku/platform/g/f$a;I)V
    .registers 3

    .prologue
    .line 743
    return-void
.end method
