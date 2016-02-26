.class public Lcom/qbao/sdk/ui/PayView;
.super Lcom/qbao/sdk/ui/BaseView;
.source "PayView.java"


# instance fields
.field private dm:Lorg/json/JSONObject;

.field private eB:Lcom/qbao/sdk/e/f;

.field private eV:Lorg/json/JSONObject;

.field private eW:Landroid/widget/EditText;

.field private eX:Landroid/widget/EditText;

.field private eY:Landroid/widget/CheckBox;

.field private eZ:Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;

.field private ey:Landroid/widget/TextView;

.field private fa:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 6

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/qbao/sdk/ui/BaseView;-><init>(Landroid/content/Context;)V

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/qbao/sdk/ui/PayView;->setOrientation(I)V

    .line 65
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/qbao/sdk/ui/PayView;->setGravity(I)V

    .line 66
    iput-object p2, p0, Lcom/qbao/sdk/ui/PayView;->dm:Lorg/json/JSONObject;

    .line 67
    iput-object p3, p0, Lcom/qbao/sdk/ui/PayView;->eV:Lorg/json/JSONObject;

    .line 68
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView;->dm:Lorg/json/JSONObject;

    const-string v1, "payCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qbao/sdk/ui/PayView;->fa:Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Lcom/qbao/sdk/ui/PayView;->aU()V

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/qbao/sdk/ui/PayView;)Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView;->eZ:Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;

    return-object v0
.end method

.method static synthetic a(Lcom/qbao/sdk/ui/PayView;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 305
    invoke-direct {p0, p1, p2, p3}, Lcom/qbao/sdk/ui/PayView;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private aU()V
    .registers 2

    .prologue
    .line 73
    new-instance v0, Lcom/qbao/sdk/ui/PayView$1;

    invoke-direct {v0, p0}, Lcom/qbao/sdk/ui/PayView$1;-><init>(Lcom/qbao/sdk/ui/PayView;)V

    iput-object v0, p0, Lcom/qbao/sdk/ui/PayView;->eZ:Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;

    .line 101
    invoke-virtual {p0}, Lcom/qbao/sdk/ui/PayView;->aF()V

    .line 102
    return-void
.end method

.method private aV()Landroid/widget/LinearLayout;
    .registers 15

    .prologue
    const/4 v13, -0x1

    const/4 v6, 0x3

    const/4 v12, 0x2

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 137
    invoke-virtual {p0, v1, v1, v6, v7}, Lcom/qbao/sdk/ui/PayView;->a(ZZII)Landroid/widget/LinearLayout;

    move-result-object v10

    .line 139
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView;->eV:Lorg/json/JSONObject;

    const-string v2, "propName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/qbao/sdk/e/g;->hD:I

    sget v3, Lcom/qbao/sdk/e/g;->iq:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/qbao/sdk/ui/PayView;->a(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    .line 140
    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 142
    invoke-virtual {p0, v1, v7, v6, v7}, Lcom/qbao/sdk/ui/PayView;->a(ZZII)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 144
    const-string v0, "\u5e94\u4ed8\u91d1\u989d\uff1a"

    sget v2, Lcom/qbao/sdk/e/g;->hD:I

    sget v3, Lcom/qbao/sdk/e/g;->in:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/qbao/sdk/ui/PayView;->a(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    .line 146
    iget-object v2, p0, Lcom/qbao/sdk/ui/PayView;->eV:Lorg/json/JSONObject;

    const-string v3, "propPrice"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qbao/sdk/a/b;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    sget v3, Lcom/qbao/sdk/e/g;->hH:I

    sget v4, Lcom/qbao/sdk/e/g;->ip:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/qbao/sdk/ui/PayView;->a(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    .line 148
    const-string v3, "\u94b1\u5b9d\u5e01"

    sget v4, Lcom/qbao/sdk/e/g;->hH:I

    sget v5, Lcom/qbao/sdk/e/g;->in:I

    invoke-virtual {p0, v3, v4, v5}, Lcom/qbao/sdk/ui/PayView;->a(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v3

    .line 150
    sget-object v4, Lcom/qbao/core/d/d$a;->aO:Lcom/qbao/core/d/d$a;

    new-array v5, v6, [Landroid/view/View;

    aput-object v0, v5, v7

    aput-object v2, v5, v1

    aput-object v3, v5, v12

    invoke-virtual {p0, v4, v1, v7, v5}, Lcom/qbao/sdk/ui/PayView;->a(Lcom/qbao/core/d/d$a;ZI[Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 151
    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    const-string v0, "\u53ef\u7528\u94b1\u5b9d\u4f59\u989d\uff1a"

    sget v2, Lcom/qbao/sdk/e/g;->hD:I

    sget v3, Lcom/qbao/sdk/e/g;->in:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/qbao/sdk/ui/PayView;->a(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    .line 154
    iget-object v2, p0, Lcom/qbao/sdk/ui/PayView;->eV:Lorg/json/JSONObject;

    const-string v3, "qbAmount"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qbao/sdk/a/b;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/qbao/sdk/e/g;->hD:I

    sget v4, Lcom/qbao/sdk/e/g;->io:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/qbao/sdk/ui/PayView;->a(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    .line 155
    sget-object v3, Lcom/qbao/core/d/d$a;->aO:Lcom/qbao/core/d/d$a;

    new-array v4, v12, [Landroid/view/View;

    aput-object v0, v4, v7

    aput-object v2, v4, v1

    invoke-virtual {p0, v3, v1, v7, v4}, Lcom/qbao/sdk/ui/PayView;->a(Lcom/qbao/core/d/d$a;ZI[Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 156
    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    const-string v2, "\u5145\u503c"

    sget v3, Lcom/qbao/sdk/e/g;->hI:I

    sget v4, Lcom/qbao/sdk/e/g;->in:I

    const/high16 v5, -0x40800000

    sget v8, Lcom/qbao/sdk/e/g;->hI:I

    sget v9, Lcom/qbao/sdk/e/g;->hM:I

    move-object v0, p0

    move v6, v1

    invoke-virtual/range {v0 .. v9}, Lcom/qbao/sdk/ui/PayView;->b(ZLjava/lang/String;IIFIIII)Landroid/widget/Button;

    move-result-object v0

    .line 159
    new-instance v2, Lcom/qbao/sdk/ui/PayView$3;

    invoke-direct {v2, p0}, Lcom/qbao/sdk/ui/PayView$3;-><init>(Lcom/qbao/sdk/ui/PayView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    sget-object v2, Lcom/qbao/core/d/d$a;->aR:Lcom/qbao/core/d/d$a;

    new-array v3, v12, [Landroid/view/View;

    aput-object v11, v3, v7

    aput-object v0, v3, v1

    invoke-virtual {p0, v2, v1, v7, v3}, Lcom/qbao/sdk/ui/PayView;->a(Lcom/qbao/core/d/d$a;ZI[Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 167
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 168
    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 169
    sget v0, Lcom/qbao/sdk/e/g;->hZ:I

    invoke-virtual {p0, v1, v7, v0}, Lcom/qbao/sdk/ui/PayView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 171
    invoke-virtual {p0}, Lcom/qbao/sdk/ui/PayView;->aK()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView;->eV:Lorg/json/JSONObject;

    if-eqz v0, :cond_179

    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView;->eV:Lorg/json/JSONObject;

    const-string v2, "useBqFlag"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_179

    .line 174
    iget-boolean v0, p0, Lcom/qbao/sdk/ui/PayView;->el:Z

    if-eqz v0, :cond_17a

    sget v0, Lcom/qbao/sdk/e/g;->hT:I

    :goto_d8
    invoke-virtual {p0, v1, v7, v0}, Lcom/qbao/sdk/ui/PayView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 175
    const-string v0, "\u53ef\u7528\u5b9d\u5238\u4f59\u989d\uff1a"

    sget v2, Lcom/qbao/sdk/e/g;->hy:I

    sget v3, Lcom/qbao/sdk/e/g;->in:I

    invoke-virtual {p0, v0, v2, v13, v3}, Lcom/qbao/sdk/ui/PayView;->a(Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    .line 177
    iget-object v2, p0, Lcom/qbao/sdk/ui/PayView;->eV:Lorg/json/JSONObject;

    const-string v3, "bqAmount"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qbao/sdk/a/b;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    sget v3, Lcom/qbao/sdk/e/g;->hy:I

    sget v4, Lcom/qbao/sdk/e/g;->io:I

    invoke-virtual {p0, v2, v3, v13, v4}, Lcom/qbao/sdk/ui/PayView;->a(Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v3

    .line 180
    sget-object v4, Lcom/qbao/core/d/d$a;->aO:Lcom/qbao/core/d/d$a;

    new-array v5, v12, [Landroid/view/View;

    aput-object v0, v5, v7

    aput-object v3, v5, v1

    invoke-virtual {p0, v4, v7, v7, v5}, Lcom/qbao/sdk/ui/PayView;->a(Lcom/qbao/core/d/d$a;ZI[Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 181
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17e

    const-string v5, "0"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17e

    .line 182
    new-instance v2, Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/qbao/sdk/ui/PayView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/qbao/sdk/ui/PayView;->eY:Landroid/widget/CheckBox;

    .line 183
    iget-object v2, p0, Lcom/qbao/sdk/ui/PayView;->eY:Landroid/widget/CheckBox;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    sget v6, Lcom/qbao/sdk/e/g;->ib:I

    sget v8, Lcom/qbao/sdk/e/g;->ib:I

    invoke-direct {v5, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget-object v2, p0, Lcom/qbao/sdk/ui/PayView;->eY:Landroid/widget/CheckBox;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object v2, p0, Lcom/qbao/sdk/ui/PayView;->eY:Landroid/widget/CheckBox;

    const-string v5, "qb_unchecked"

    invoke-virtual {p0, v5}, Lcom/qbao/sdk/ui/PayView;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    iget-object v2, p0, Lcom/qbao/sdk/ui/PayView;->eY:Landroid/widget/CheckBox;

    new-instance v5, Lcom/qbao/sdk/ui/PayView$4;

    invoke-direct {v5, p0, v0, v3}, Lcom/qbao/sdk/ui/PayView$4;-><init>(Lcom/qbao/sdk/ui/PayView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 203
    sget-object v0, Lcom/qbao/core/d/d$a;->aO:Lcom/qbao/core/d/d$a;

    sget v2, Lcom/qbao/sdk/e/g;->hS:I

    new-array v3, v12, [Landroid/view/View;

    iget-object v5, p0, Lcom/qbao/sdk/ui/PayView;->eY:Landroid/widget/CheckBox;

    aput-object v5, v3, v7

    aput-object v4, v3, v1

    invoke-virtual {p0, v0, v7, v2, v3}, Lcom/qbao/sdk/ui/PayView;->a(Lcom/qbao/core/d/d$a;ZI[Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 204
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 205
    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 210
    :goto_165
    iget-boolean v0, p0, Lcom/qbao/sdk/ui/PayView;->el:Z

    if-eqz v0, :cond_182

    sget v0, Lcom/qbao/sdk/e/g;->hT:I

    :goto_16b
    invoke-virtual {p0, v1, v7, v0}, Lcom/qbao/sdk/ui/PayView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 211
    invoke-virtual {p0}, Lcom/qbao/sdk/ui/PayView;->aK()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 213
    :cond_179
    return-object v10

    .line 174
    :cond_17a
    sget v0, Lcom/qbao/sdk/e/g;->hW:I

    goto/16 :goto_d8

    .line 207
    :cond_17e
    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_165

    .line 210
    :cond_182
    sget v0, Lcom/qbao/sdk/e/g;->hW:I

    goto :goto_16b
.end method

.method private aW()Landroid/widget/LinearLayout;
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 222
    const/4 v0, 0x3

    invoke-virtual {p0, v7, v7, v0, v5}, Lcom/qbao/sdk/ui/PayView;->a(ZZII)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 223
    iget-boolean v0, p0, Lcom/qbao/sdk/ui/PayView;->el:Z

    if-eqz v0, :cond_a3

    sget v0, Lcom/qbao/sdk/e/g;->hT:I

    :goto_d
    invoke-virtual {v6, v5, v0, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u94b1\u5b9d\u8d26\u53f7\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/qbao/sdk/a/a;->Y()Lcom/qbao/sdk/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qbao/sdk/a/a;->ad()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/qbao/sdk/e/g;->hD:I

    sget v2, Lcom/qbao/sdk/e/g;->in:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/qbao/sdk/ui/PayView;->a(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    .line 226
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 227
    iget-boolean v0, p0, Lcom/qbao/sdk/ui/PayView;->el:Z

    if-eqz v0, :cond_a7

    sget v0, Lcom/qbao/sdk/e/g;->hT:I

    :goto_38
    invoke-virtual {p0, v7, v5, v0}, Lcom/qbao/sdk/ui/PayView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 229
    const-string v0, "\u8bf7\u8f93\u5165\u4ea4\u6613\u5bc6\u7801"

    const/high16 v1, 0x3f400000

    sget v2, Lcom/qbao/sdk/e/g;->im:I

    invoke-virtual {p0, v0, v1, v7, v2}, Lcom/qbao/sdk/ui/PayView;->a(Ljava/lang/String;FII)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/qbao/sdk/ui/PayView;->eW:Landroid/widget/EditText;

    .line 231
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView;->eW:Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 232
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView;->eV:Lorg/json/JSONObject;

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView;->eV:Lorg/json/JSONObject;

    const-string v1, "msgFlag"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_99

    .line 233
    sget v0, Lcom/qbao/sdk/e/g;->hR:I

    invoke-virtual {p0, v7, v5, v0}, Lcom/qbao/sdk/ui/PayView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    const-string v0, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    sget v1, Lcom/qbao/sdk/e/g;->hF:I

    sget v2, Lcom/qbao/sdk/e/g;->hN:I

    sget v3, Lcom/qbao/sdk/e/g;->il:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/qbao/sdk/ui/PayView;->a(Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/qbao/sdk/ui/PayView;->ey:Landroid/widget/TextView;

    .line 237
    const-string v1, "\u8f93\u5165\u9a8c\u8bc1\u7801"

    const v2, 0x3f0a3d71

    const/4 v3, 0x2

    sget v4, Lcom/qbao/sdk/e/g;->im:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/qbao/sdk/ui/PayView;->a(Ljava/lang/String;FIIZ)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/qbao/sdk/ui/PayView;->eX:Landroid/widget/EditText;

    .line 238
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView;->ey:Landroid/widget/TextView;

    new-instance v1, Lcom/qbao/sdk/ui/PayView$5;

    invoke-direct {v1, p0}, Lcom/qbao/sdk/ui/PayView$5;-><init>(Lcom/qbao/sdk/ui/PayView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView;->eX:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/qbao/sdk/ui/PayView;->ey:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/qbao/sdk/ui/PayView;->a(Landroid/widget/EditText;Landroid/widget/TextView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 248
    :cond_99
    sget v0, Lcom/qbao/sdk/e/g;->hZ:I

    invoke-virtual {p0, v7, v5, v0}, Lcom/qbao/sdk/ui/PayView;->a(ZII)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 249
    return-object v6

    .line 223
    :cond_a3
    sget v0, Lcom/qbao/sdk/e/g;->hZ:I

    goto/16 :goto_d

    .line 227
    :cond_a7
    sget v0, Lcom/qbao/sdk/e/g;->hZ:I

    goto :goto_38
.end method

.method private aX()Landroid/widget/LinearLayout;
    .registers 11

    .prologue
    const/4 v5, 0x1

    .line 257
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v5, v5, v0, v1}, Lcom/qbao/sdk/ui/PayView;->a(ZZII)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 259
    const-string v1, "\u63d0\u4ea4"

    const/4 v2, -0x1

    sget v3, Lcom/qbao/sdk/e/g;->io:I

    const/high16 v4, 0x3f400000

    sget v6, Lcom/qbao/sdk/e/g;->hH:I

    sget v7, Lcom/qbao/sdk/e/g;->hH:I

    sget v8, Lcom/qbao/sdk/e/g;->hL:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/qbao/sdk/ui/PayView;->a(Ljava/lang/String;IIFIIII)Landroid/widget/Button;

    move-result-object v0

    .line 260
    new-instance v1, Lcom/qbao/sdk/ui/PayView$6;

    invoke-direct {v1, p0}, Lcom/qbao/sdk/ui/PayView$6;-><init>(Lcom/qbao/sdk/ui/PayView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 282
    return-object v9
.end method

.method private aY()V
    .registers 4

    .prologue
    .line 286
    const-string v0, "\u6b63\u5728\u5904\u7406..."

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qbao/sdk/ui/PayView;->b(Ljava/lang/String;Z)V

    .line 287
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView;->eV:Lorg/json/JSONObject;

    const-string v1, "sdkflowId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qbao/sdk/ui/PayView;->eV:Lorg/json/JSONObject;

    const-string v2, "transDate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/qbao/sdk/ui/PayView$7;

    invoke-direct {v2, p0}, Lcom/qbao/sdk/ui/PayView$7;-><init>(Lcom/qbao/sdk/ui/PayView;)V

    invoke-static {v0, v1, v2}, Lcom/qbao/sdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/c;)V

    .line 303
    return-void
.end method

.method private aZ()V
    .registers 4

    .prologue
    .line 335
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView;->eB:Lcom/qbao/sdk/e/f;

    if-nez v0, :cond_f

    .line 336
    new-instance v0, Lcom/qbao/sdk/e/f;

    iget-object v1, p0, Lcom/qbao/sdk/ui/PayView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qbao/sdk/ui/PayView;->ey:Landroid/widget/TextView;

    invoke-direct {v0, v1, v2}, Lcom/qbao/sdk/e/f;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/qbao/sdk/ui/PayView;->eB:Lcom/qbao/sdk/e/f;

    .line 338
    :cond_f
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView;->eB:Lcom/qbao/sdk/e/f;

    invoke-virtual {v0}, Lcom/qbao/sdk/e/f;->start()Landroid/os/CountDownTimer;

    .line 339
    return-void
.end method

.method static synthetic b(Lcom/qbao/sdk/ui/PayView;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView;->fa:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/qbao/sdk/ui/PayView;)Landroid/widget/CheckBox;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView;->eY:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10

    .prologue
    .line 306
    const-string v0, "\u6b63\u5728\u5904\u7406..."

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qbao/sdk/ui/PayView;->b(Ljava/lang/String;Z)V

    .line 307
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView;->eV:Lorg/json/JSONObject;

    const-string v1, "sdkflowId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qbao/sdk/ui/PayView;->eV:Lorg/json/JSONObject;

    const-string v2, "transDate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/qbao/sdk/ui/PayView$8;

    invoke-direct {v5, p0}, Lcom/qbao/sdk/ui/PayView$8;-><init>(Lcom/qbao/sdk/ui/PayView;)V

    move-object v1, p1

    move v2, p3

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/qbao/sdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V

    .line 332
    return-void
.end method

.method static synthetic d(Lcom/qbao/sdk/ui/PayView;)V
    .registers 1

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/qbao/sdk/ui/PayView;->aY()V

    return-void
.end method

.method static synthetic e(Lcom/qbao/sdk/ui/PayView;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView;->eW:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/qbao/sdk/ui/PayView;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView;->eX:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lcom/qbao/sdk/ui/PayView;)V
    .registers 1

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/qbao/sdk/ui/PayView;->aZ()V

    return-void
.end method


# virtual methods
.method protected aA()Landroid/widget/RelativeLayout;
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 113
    const-string v1, "\u652f\u4ed8"

    const/4 v2, 0x0

    new-instance v5, Lcom/qbao/sdk/ui/PayView$2;

    invoke-direct {v5, p0}, Lcom/qbao/sdk/ui/PayView$2;-><init>(Lcom/qbao/sdk/ui/PayView;)V

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/qbao/sdk/ui/PayView;->a(Ljava/lang/String;ZZZLandroid/view/View$OnClickListener;)Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method protected aB()Landroid/widget/LinearLayout;
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 124
    invoke-virtual {p0, v0, v0, v0, v4}, Lcom/qbao/sdk/ui/PayView;->a(ZZII)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 125
    sget v1, Lcom/qbao/sdk/e/g;->ic:I

    sget v2, Lcom/qbao/sdk/e/g;->ic:I

    sget v3, Lcom/qbao/sdk/e/g;->ic:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 126
    invoke-direct {p0}, Lcom/qbao/sdk/ui/PayView;->aV()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    invoke-direct {p0}, Lcom/qbao/sdk/ui/PayView;->aW()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    invoke-direct {p0}, Lcom/qbao/sdk/ui/PayView;->aX()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    return-object v0
.end method

.method protected aI()Landroid/widget/LinearLayout;
    .registers 4

    .prologue
    .line 106
    invoke-super {p0}, Lcom/qbao/sdk/ui/BaseView;->aI()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 108
    return-object v1
.end method

.method protected aO()V
    .registers 5

    .prologue
    .line 343
    invoke-super {p0}, Lcom/qbao/sdk/ui/BaseView;->aO()V

    .line 344
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView;->eZ:Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/qbao/sdk/ui/PayView;->fa:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;->onResult(ILjava/lang/String;Ljava/lang/Object;)V

    .line 345
    return-void
.end method
