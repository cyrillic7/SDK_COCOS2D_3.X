.class public Lcom/baidu/bdgame/sdk/obf/jj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/jj$3;,
        Lcom/baidu/bdgame/sdk/obf/jj$a;
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/bdgame/sdk/obf/ce;

.field private b:Lcom/baidu/bdgame/sdk/obf/jn;

.field private c:Lcom/baidu/bdgame/sdk/obf/jd;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/baidu/bdgame/sdk/obf/jj$a;

.field private h:Lcom/baidu/bdgame/sdk/obf/lu;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/jn;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/dp;ILjava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/16 v0, 0xb4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/jj;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    .line 50
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/jj;->b:Lcom/baidu/bdgame/sdk/obf/jn;

    .line 51
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/jj;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    .line 52
    if-le p5, v0, :cond_e

    move p5, v0

    .line 55
    :cond_e
    mul-int/lit16 v0, p5, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/jj;->d:J

    .line 56
    iput-object p6, p0, Lcom/baidu/bdgame/sdk/obf/jj;->e:Ljava/lang/String;

    .line 57
    iput-object p7, p0, Lcom/baidu/bdgame/sdk/obf/jj;->f:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/jj$a;

    invoke-direct {v0, p0, p7}, Lcom/baidu/bdgame/sdk/obf/jj$a;-><init>(Lcom/baidu/bdgame/sdk/obf/jj;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jj;->g:Lcom/baidu/bdgame/sdk/obf/jj$a;

    .line 59
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/lu;

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jj;->h:Lcom/baidu/bdgame/sdk/obf/lu;

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/jj;)Lcom/baidu/bdgame/sdk/obf/ce;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jj;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/jj;Lcom/baidu/bdgame/sdk/obf/jn;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/jj;->a(Lcom/baidu/bdgame/sdk/obf/jn;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/jn;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 121
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jj;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v1

    .line 124
    sget-object v2, Lcom/baidu/bdgame/sdk/obf/jj$3;->a:[I

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/jn;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_118

    .line 154
    const/16 v0, -0xbbb

    .line 155
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 156
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jj;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/jj;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "bdp_passport_pay_submit"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 158
    :cond_30
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move v6, v0

    .line 162
    :goto_36
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/jk;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jj;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v1

    new-instance v5, Lcom/baidu/bdgame/sdk/obf/jj$2;

    invoke-direct {v5, p0}, Lcom/baidu/bdgame/sdk/obf/jj$2;-><init>(Lcom/baidu/bdgame/sdk/obf/jj;)V

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/jk;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/jn;Landroid/text/Spannable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jk;->show()V

    .line 172
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jj;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "order"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/PayOrderInfo;

    .line 173
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jj;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v1, v6, p2, v0}, Lcom/baidu/bdgame/sdk/obf/ce;->a(ILjava/lang/String;Landroid/os/Parcelable;)V

    .line 174
    return-void

    .line 127
    :pswitch_63
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 128
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/jj;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/jj;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "bdp_passport_pay"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 130
    :cond_7f
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/jj;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/jd;->c()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e9

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/jj;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/jj;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v5}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "bdp_paycenter_pay_result_notify_success_tip"

    invoke-static {v5, v6}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 135
    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 136
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 137
    const/4 v4, -0x1

    if-eq v5, v4, :cond_e6

    .line 138
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "bdp_orange"

    invoke-static {v1, v7}, Lcom/baidu/bdgame/sdk/obf/kq;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v4, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v5

    const/16 v2, 0x21

    invoke-interface {v3, v4, v5, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_e6
    move v6, v0

    .line 141
    goto/16 :goto_36

    .line 142
    :cond_e9
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move v6, v0

    .line 144
    goto/16 :goto_36

    .line 146
    :pswitch_f1
    const/16 v0, -0xbba

    .line 147
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 148
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jj;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/jj;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "bdp_passport_pay_fail"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 150
    :cond_10f
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move v6, v0

    .line 151
    goto/16 :goto_36

    .line 124
    nop

    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_63
        :pswitch_f1
    .end packed-switch
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/jj;)Lcom/baidu/bdgame/sdk/obf/lu;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jj;->h:Lcom/baidu/bdgame/sdk/obf/lu;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/jj;)J
    .registers 3

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/jj;->d:J

    return-wide v0
.end method

.method private d()V
    .registers 5

    .prologue
    .line 103
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jj;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "order"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/PayOrderInfo;

    .line 104
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jj;->e:Ljava/lang/String;

    .line 105
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 106
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jj;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/jj;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "bdp_passport_pay_submit"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    :cond_30
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/jj;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    const/16 v3, -0xbbb

    invoke-virtual {v2, v3, v1, v0}, Lcom/baidu/bdgame/sdk/obf/ce;->a(ILjava/lang/String;Landroid/os/Parcelable;)V

    .line 109
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/jj;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jj;->b:Lcom/baidu/bdgame/sdk/obf/jn;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/jn;->b:Lcom/baidu/bdgame/sdk/obf/jn;

    if-ne v0, v1, :cond_17

    .line 67
    :cond_e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jj;->b:Lcom/baidu/bdgame/sdk/obf/jn;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jj;->e:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/jj;->a(Lcom/baidu/bdgame/sdk/obf/jn;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_16
    return-void

    .line 69
    :cond_17
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/jj;->d()V

    .line 70
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jj;->g:Lcom/baidu/bdgame/sdk/obf/jj$a;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jj$a;->a()V

    goto :goto_16
.end method

.method public b()V
    .registers 8

    .prologue
    .line 82
    const/16 v6, -0xbbb

    .line 83
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jj;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jj;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jj;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bdp_passport_pay_submit"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jj;->e:Ljava/lang/String;

    .line 87
    :cond_22
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/jk;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jj;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/jn;->c:Lcom/baidu/bdgame/sdk/obf/jn;

    new-instance v3, Landroid/text/SpannableString;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/jj;->e:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    new-instance v5, Lcom/baidu/bdgame/sdk/obf/jj$1;

    invoke-direct {v5, p0}, Lcom/baidu/bdgame/sdk/obf/jj$1;-><init>(Lcom/baidu/bdgame/sdk/obf/jj;)V

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/jk;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/jn;Landroid/text/Spannable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jk;->show()V

    .line 97
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jj;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "order"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/PayOrderInfo;

    .line 98
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jj;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/jj;->e:Ljava/lang/String;

    invoke-virtual {v1, v6, v2, v0}, Lcom/baidu/bdgame/sdk/obf/ce;->a(ILjava/lang/String;Landroid/os/Parcelable;)V

    .line 99
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jj;->g:Lcom/baidu/bdgame/sdk/obf/jj$a;

    if-eqz v0, :cond_9

    .line 179
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jj;->g:Lcom/baidu/bdgame/sdk/obf/jj$a;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jj$a;->b()V

    .line 181
    :cond_9
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jj;->h:Lcom/baidu/bdgame/sdk/obf/lu;

    if-eqz v0, :cond_12

    .line 182
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jj;->h:Lcom/baidu/bdgame/sdk/obf/lu;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/lu;->b()V

    .line 184
    :cond_12
    return-void
.end method
