.class Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/CheckBox;

.field final synthetic c:Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;


# direct methods
.method public constructor <init>(Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;Landroid/content/Context;)V
    .registers 7

    .prologue
    const/4 v3, -0x1

    .line 153
    iput-object p1, p0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;->c:Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;

    .line 154
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 155
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "bdp_paycenter_view_bank_card_item"

    invoke-static {p2, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 160
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;->setGravity(I)V

    .line 161
    const-string v0, "bdp_paycenter_tv_card_name"

    invoke-static {p2, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;->a:Landroid/widget/TextView;

    .line 163
    const-string v0, "bdp_paycenter_cb_select"

    invoke-static {p2, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;->b:Landroid/widget/CheckBox;

    .line 165
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;->b:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 166
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/bdgame/sdk/obf/ij;)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 171
    invoke-virtual {p0, p1}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;->setTag(Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_paycenter_bank_card_choose"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ij;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ij;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 177
    return-void
.end method

.method public isSelected()Z
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setSelected(Z)V
    .registers 3
    .param p1, "isSelected"    # Z

    .prologue
    .line 180
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 181
    return-void
.end method
