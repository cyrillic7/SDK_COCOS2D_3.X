.class public Lcom/baidu/bdgame/sdk/obf/fn;
.super Lcom/baidu/bdgame/sdk/obf/is;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/fn$2;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1


# instance fields
.field private e:Landroid/widget/ImageView;

.field private f:I

.field private g:Lcom/baidu/bdgame/sdk/obf/gi;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/gi;I)V
    .registers 4

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/is;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/fn;->g:Lcom/baidu/bdgame/sdk/obf/gi;

    .line 34
    iput p3, p0, Lcom/baidu/bdgame/sdk/obf/fn;->f:I

    .line 35
    return-void
.end method

.method private b()V
    .registers 4

    .prologue
    .line 64
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/fn;->f:I

    packed-switch v0, :pswitch_data_52

    .line 85
    :goto_5
    return-void

    .line 66
    :pswitch_6
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/gi;->a:Lcom/baidu/bdgame/sdk/obf/gi;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fn;->g:Lcom/baidu/bdgame/sdk/obf/gi;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gi;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 67
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fn;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fn;->c:Landroid/content/Context;

    const-string v2, "bdp_paycenter_ic_credit_card_bank_p"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 70
    :cond_1e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fn;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fn;->c:Landroid/content/Context;

    const-string v2, "bdp_paycenter_ic_cash_card_bank_p"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 75
    :pswitch_2c
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/gi;->a:Lcom/baidu/bdgame/sdk/obf/gi;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fn;->g:Lcom/baidu/bdgame/sdk/obf/gi;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gi;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 76
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fn;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fn;->c:Landroid/content/Context;

    const-string v2, "bdp_paycenter_ic_credit_card_bank_l"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 79
    :cond_44
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fn;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fn;->c:Landroid/content/Context;

    const-string v2, "bdp_paycenter_ic_cash_card_bank_l"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 64
    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_6
        :pswitch_2c
    .end packed-switch
.end method

.method private b(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fn;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_dialog_iv_close"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fn;->e:Landroid/widget/ImageView;

    .line 40
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fn;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_tv_dialog_tip_title"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fn;->h:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fn;->c:Landroid/content/Context;

    const-string v1, "support_bank_iv"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fn;->i:Landroid/widget/ImageView;

    .line 43
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/fn$2;->a:[I

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fn;->g:Lcom/baidu/bdgame/sdk/obf/gi;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/gi;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_68

    .line 53
    :goto_3d
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fn;->b()V

    .line 54
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fn;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/fn$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/fn$1;-><init>(Lcom/baidu/bdgame/sdk/obf/fn;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void

    .line 45
    :pswitch_4b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fn;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fn;->c:Landroid/content/Context;

    const-string v2, "bdp_paycenter_credit_support_bank_list"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3d

    .line 48
    :pswitch_59
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fn;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fn;->c:Landroid/content/Context;

    const-string v2, "bdp_paycenter_yibao_cash_card_support_bank_list"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3d

    .line 43
    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_59
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 89
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/is;->a()I

    move-result v0

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/fn;->f:I

    .line 90
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/fn;->b()V

    .line 91
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/fn;->f:I

    return v0
.end method

.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fn;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_layout_dialog_bank_card_support"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 98
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/fn;->b(Landroid/view/View;)V

    .line 99
    return-object v0
.end method
