.class Lcom/baidu/bdgame/sdk/obf/fo$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/fo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/fo;

.field private b:Lcom/baidu/bdgame/sdk/obf/ij;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/fo;Lcom/baidu/bdgame/sdk/obf/ij;)V
    .registers 3

    .prologue
    .line 224
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fo$a;->a:Lcom/baidu/bdgame/sdk/obf/fo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/fo$a;->b:Lcom/baidu/bdgame/sdk/obf/ij;

    .line 226
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 230
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo$a;->a:Lcom/baidu/bdgame/sdk/obf/fo;

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/fo;->a(Lcom/baidu/bdgame/sdk/obf/fo;Landroid/view/View;)V

    .line 231
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo$a;->a:Lcom/baidu/bdgame/sdk/obf/fo;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fo$a;->b:Lcom/baidu/bdgame/sdk/obf/ij;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fo;->a(Lcom/baidu/bdgame/sdk/obf/fo;Lcom/baidu/bdgame/sdk/obf/ij;)Lcom/baidu/bdgame/sdk/obf/ij;

    .line 232
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo$a;->a:Lcom/baidu/bdgame/sdk/obf/fo;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fo;->a(Lcom/baidu/bdgame/sdk/obf/fo;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo$a;->a:Lcom/baidu/bdgame/sdk/obf/fo;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fo;->b(Lcom/baidu/bdgame/sdk/obf/fo;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/fo$2;->a:[I

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fo$a;->a:Lcom/baidu/bdgame/sdk/obf/fo;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/fo;->c(Lcom/baidu/bdgame/sdk/obf/fo;)Lcom/baidu/bdgame/sdk/obf/gi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/gi;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7c

    .line 248
    :goto_33
    return-void

    .line 236
    :pswitch_34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo$a;->a:Lcom/baidu/bdgame/sdk/obf/fo;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fo;->e(Lcom/baidu/bdgame/sdk/obf/fo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fo$a;->a:Lcom/baidu/bdgame/sdk/obf/fo;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/fo;->d(Lcom/baidu/bdgame/sdk/obf/fo;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_credit_removebind_ensure"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/fo$a;->b:Lcom/baidu/bdgame/sdk/obf/ij;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/ij;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_33

    .line 241
    :pswitch_58
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fo$a;->a:Lcom/baidu/bdgame/sdk/obf/fo;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fo;->e(Lcom/baidu/bdgame/sdk/obf/fo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fo$a;->a:Lcom/baidu/bdgame/sdk/obf/fo;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/fo;->f(Lcom/baidu/bdgame/sdk/obf/fo;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_yibao_cash_card_removebind_ensure"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/fo$a;->b:Lcom/baidu/bdgame/sdk/obf/ij;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/ij;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_33

    .line 234
    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_34
        :pswitch_58
    .end packed-switch
.end method
