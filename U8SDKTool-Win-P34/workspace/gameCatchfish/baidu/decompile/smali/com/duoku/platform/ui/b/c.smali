.class public Lcom/duoku/platform/ui/b/c;
.super Lcom/duoku/platform/ui/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/ui/b/c$a;,
        Lcom/duoku/platform/ui/b/c$b;
    }
.end annotation


# static fields
.field private static volatile h:Lcom/duoku/platform/ui/b/c;


# instance fields
.field protected a:Lcom/duoku/platform/e/a;

.field protected b:Landroid/content/DialogInterface$OnCancelListener;

.field protected c:Landroid/content/DialogInterface$OnKeyListener;

.field public d:Lcom/duoku/platform/ui/b/c$a;

.field public e:Lcom/duoku/platform/ui/b/c$b;

.field private f:Landroid/app/Activity;

.field private g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/duoku/platform/ui/b/c;->h:Lcom/duoku/platform/ui/b/c;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/duoku/platform/ui/b/a;-><init>()V

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/ui/b/c;->g:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/ui/b/c;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 14

    .prologue
    const/4 v10, 0x0

    .line 958
    new-instance v5, Landroid/app/Dialog;

    const-string v0, "dialog_style_actionnotice"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {v5, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 959
    invoke-virtual {v5, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 960
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b/c;->b()Z

    move-result v0

    if-nez v0, :cond_da

    .line 962
    const-string v0, "dk_dialog_actionnotice_port"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 969
    :goto_1e
    const-string v0, "bd_actionnotice_toptitle"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 970
    const-string v1, "bd_actionnotice_actiontime"

    invoke-static {p1, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 971
    const-string v2, "bd_actionnotice_actioncontent"

    invoke-static {p1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 972
    const-string v3, "bd_ll_actionnotice_close"

    invoke-static {p1, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 973
    const-string v4, "bd_bt_actionnotice_link"

    invoke-static {p1, v4}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 974
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v6

    const-string v7, "dk_actionanno_title"

    invoke-virtual {v6, v7}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 975
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v7

    const-string v8, "dk_actionanno_content"

    invoke-virtual {v7, v8}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 976
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v8

    const-string v9, "dk_actionanno_link"

    invoke-virtual {v8, v9}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 977
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 978
    const-string v0, "#"

    const-string v6, "-"

    invoke-virtual {p2, v0, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 979
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "\u6d3b\u52a8\u65f6\u95f4\uff1a"

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 981
    const-string v0, "\\"

    const-string v1, ""

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 982
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string v6, "UTF-8"

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 983
    const-string v1, "#00000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 984
    const-string v1, "text/html; charset=UTF-8"

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v1, v6}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ce

    const-string v0, "http"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 987
    invoke-virtual {v4, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 988
    new-instance v0, Lcom/duoku/platform/ui/b/c$15;

    invoke-direct {v0, p0, v8, p1}, Lcom/duoku/platform/ui/b/c$15;-><init>(Lcom/duoku/platform/ui/b/c;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1000
    :cond_ce
    new-instance v0, Lcom/duoku/platform/ui/b/c$3;

    invoke-direct {v0, p0, p1, v5}, Lcom/duoku/platform/ui/b/c$3;-><init>(Lcom/duoku/platform/ui/b/c;Landroid/content/Context;Landroid/app/Dialog;)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1013
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1014
    return-void

    .line 966
    :cond_da
    const-string v0, "dk_dialog_actionnotice_land"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    goto/16 :goto_1e
.end method

.method public static c()Lcom/duoku/platform/ui/b/c;
    .registers 2

    .prologue
    .line 88
    sget-object v0, Lcom/duoku/platform/ui/b/c;->h:Lcom/duoku/platform/ui/b/c;

    if-nez v0, :cond_13

    .line 90
    const-class v1, Lcom/duoku/platform/ui/b/c;

    monitor-enter v1

    .line 92
    :try_start_7
    sget-object v0, Lcom/duoku/platform/ui/b/c;->h:Lcom/duoku/platform/ui/b/c;

    if-nez v0, :cond_12

    .line 94
    new-instance v0, Lcom/duoku/platform/ui/b/c;

    invoke-direct {v0}, Lcom/duoku/platform/ui/b/c;-><init>()V

    sput-object v0, Lcom/duoku/platform/ui/b/c;->h:Lcom/duoku/platform/ui/b/c;

    .line 90
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 99
    :cond_13
    sget-object v0, Lcom/duoku/platform/ui/b/c;->h:Lcom/duoku/platform/ui/b/c;

    return-object v0

    .line 90
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/app/Dialog;
    .registers 6

    .prologue
    .line 517
    new-instance v1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    iget-object v2, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    const-string v3, "payment_dialog_style_new"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 519
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 521
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b/c;->b()Z

    move-result v0

    if-nez v0, :cond_36

    .line 524
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    const-string v2, "dk_payment_layout_dialog_new_portrait"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 531
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    const-string v2, "dk_tv_dialog_tip_info_new"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 533
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    return-object v1

    .line 526
    :cond_36
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b/c;->b()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 528
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    const-string v2, "dk_payment_layout_dialog_new_landscape"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    goto :goto_24
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;D)Landroid/app/Dialog;
    .registers 12

    .prologue
    .line 160
    new-instance v2, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    const-string v3, "payment_dialog_style"

    invoke-static {v1, v3}, Lcom/duoku/platform/util/m;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v2, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 162
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 164
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b/c;->b()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 166
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    const-string v1, "dk_payment_layout_dialog_portrait"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 173
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    const-string v1, "dk_tv_dialog_tip_title"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 174
    iget-object v1, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    const-string v3, "dk_tv_dialog_tip_info"

    invoke-static {v1, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 176
    if-nez p1, :cond_7d

    .line 177
    iget-object v3, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    const-string v4, "dk_tip"

    invoke-static {v3, v4}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 181
    :goto_4d
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b/c;->b()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 185
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 186
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v4, v0

    mul-double/2addr v4, p3

    double-to-int v0, v4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 190
    :cond_6a
    return-object v2

    .line 168
    :cond_6b
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b/c;->b()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 170
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    const-string v1, "dk_payment_layout_dialog_landscape"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V

    goto :goto_24

    .line 179
    :cond_7d
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4d
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Landroid/app/Dialog;
    .registers 16

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 218
    const-wide v0, 0x3fe999999999999aL

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/duoku/platform/ui/b/c;->a(Ljava/lang/String;Ljava/lang/String;D)Landroid/app/Dialog;

    move-result-object v3

    .line 220
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    const-string v1, "dk_layout_dialog_tip_title"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 221
    iget-object v1, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    const-string v2, "dk_btn_dialog_back"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 222
    iget-object v2, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    const-string v4, "dk_btn_dialog_cancel"

    invoke-static {v2, v4}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 224
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-ne v4, v6, :cond_3f

    .line 225
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    :cond_3f
    if-nez p3, :cond_71

    .line 229
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 237
    :goto_44
    if-nez p4, :cond_78

    .line 239
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 247
    :goto_49
    if-eqz p5, :cond_4e

    .line 249
    invoke-virtual {v1, p5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 252
    :cond_4e
    if-eqz p6, :cond_53

    .line 254
    invoke-virtual {v2, p6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 257
    :cond_53
    if-eqz p7, :cond_58

    .line 259
    invoke-virtual {v1, p7}, Landroid/widget/Button;->setTextColor(I)V

    .line 262
    :cond_58
    if-eqz p8, :cond_5d

    .line 264
    invoke-virtual {v2, p8}, Landroid/widget/Button;->setTextColor(I)V

    .line 267
    :cond_5d
    new-instance v0, Lcom/duoku/platform/ui/b/c$2;

    invoke-direct {v0, p0, v3}, Lcom/duoku/platform/ui/b/c$2;-><init>(Lcom/duoku/platform/ui/b/c;Landroid/app/Dialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    new-instance v0, Lcom/duoku/platform/ui/b/c$4;

    invoke-direct {v0, p0}, Lcom/duoku/platform/ui/b/c$4;-><init>(Lcom/duoku/platform/ui/b/c;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 291
    return-object v3

    .line 233
    :cond_71
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 234
    invoke-virtual {v1, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_44

    .line 243
    :cond_78
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 244
    invoke-virtual {v2, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_49
.end method

.method public a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .registers 14

    .prologue
    const/4 v5, 0x0

    .line 351
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b/c;->i()Ljava/lang/String;

    move-result-object v3

    .line 353
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b/c;->g()I

    move-result v6

    .line 355
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b/c;->h()I

    move-result v8

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move v7, v5

    .line 356
    invoke-virtual/range {v0 .. v8}, Lcom/duoku/platform/ui/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Landroid/app/Dialog;

    move-result-object v0

    .line 358
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 360
    new-instance v1, Lcom/duoku/platform/ui/b/c$6;

    invoke-direct {v1, p0, v0}, Lcom/duoku/platform/ui/b/c$6;-><init>(Lcom/duoku/platform/ui/b/c;Landroid/app/Dialog;)V

    iput-object v1, p0, Lcom/duoku/platform/ui/b/c;->d:Lcom/duoku/platform/ui/b/c$a;

    .line 378
    new-instance v1, Lcom/duoku/platform/ui/b/c$7;

    invoke-direct {v1, p0, v0}, Lcom/duoku/platform/ui/b/c$7;-><init>(Lcom/duoku/platform/ui/b/c;Landroid/app/Dialog;)V

    iput-object v1, p0, Lcom/duoku/platform/ui/b/c;->e:Lcom/duoku/platform/ui/b/c$b;

    .line 389
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 390
    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 789
    iput-object p1, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    .line 790
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/util/List;D)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/bean/c;",
            ">;D)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 855
    new-instance v4, Landroid/app/Dialog;

    const-string v0, "dialog_style_notice"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {v4, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 856
    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 858
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b/c;->b()Z

    move-result v0

    if-nez v0, :cond_8c

    .line 860
    const-string v0, "bd_dialog_errornotice_port"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 868
    :goto_1f
    const-string v0, "bd_tv_nexttitle"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 869
    const-string v1, "bd_iv_notice_close"

    invoke-static {p1, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 870
    const-string v2, "bd_lv_notice"

    invoke-static {p1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 871
    new-instance v3, Lcom/duoku/platform/a/i;

    invoke-direct {v3, p1, p2}, Lcom/duoku/platform/a/i;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 873
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v6, :cond_96

    .line 875
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 876
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "\u4e0b\u4e00\u6761\uff1a"

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/duoku/platform/bean/c;

    invoke-virtual {v3}, Lcom/duoku/platform/bean/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 883
    :goto_70
    new-instance v3, Lcom/duoku/platform/ui/b/c$12;

    invoke-direct {v3, p0, p2, v0}, Lcom/duoku/platform/ui/b/c$12;-><init>(Lcom/duoku/platform/ui/b/c;Ljava/util/List;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 913
    new-instance v3, Lcom/duoku/platform/ui/b/c$13;

    invoke-direct {v3, p0, v4}, Lcom/duoku/platform/ui/b/c$13;-><init>(Lcom/duoku/platform/ui/b/c;Landroid/app/Dialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 923
    new-instance v1, Lcom/duoku/platform/ui/b/c$14;

    invoke-direct {v1, p0, v2, v0}, Lcom/duoku/platform/ui/b/c$14;-><init>(Lcom/duoku/platform/ui/b/c;Landroid/widget/ListView;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 932
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 933
    return-void

    .line 865
    :cond_8c
    const-string v0, "bd_dialog_errornotice"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setContentView(I)V

    goto :goto_1f

    .line 880
    :cond_96
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_70
.end method

.method public a(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 937
    if-nez p1, :cond_3

    .line 954
    :cond_2
    :goto_2
    return-void

    .line 941
    :cond_3
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    const-string v1, "dk_actionanno_time"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 942
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 946
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 947
    if-ltz v1, :cond_2

    .line 952
    invoke-direct {p0, p1, v0}, Lcom/duoku/platform/ui/b/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Lcom/duoku/platform/view/user/a;)V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 623
    invoke-virtual {p0, p1}, Lcom/duoku/platform/ui/b/c;->a(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v2

    .line 624
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    const-string v3, "dk_dialog_install_left"

    invoke-static {v1, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 625
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    const-string v4, "dk_dialog_method_right"

    invoke-static {v1, v4}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 626
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 627
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 628
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    const-string v1, "dk_btn_dialog_back_new"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 629
    iget-object v1, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    const-string v5, "dk_btn_dialog_cancel_new"

    invoke-static {v1, v5}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 630
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 631
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 632
    new-instance v3, Lcom/duoku/platform/ui/b/c$8;

    invoke-direct {v3, p0, v2}, Lcom/duoku/platform/ui/b/c$8;-><init>(Lcom/duoku/platform/ui/b/c;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    new-instance v0, Lcom/duoku/platform/ui/b/c$9;

    invoke-direct {v0, p0, p2, v2}, Lcom/duoku/platform/ui/b/c$9;-><init>(Lcom/duoku/platform/ui/b/c;Lcom/duoku/platform/view/user/a;Landroid/app/Dialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 654
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .prologue
    const/4 v5, 0x0

    .line 308
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b/c;->j()Ljava/lang/String;

    move-result-object v4

    .line 310
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b/c;->g()I

    move-result v6

    .line 312
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b/c;->h()I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v7, v5

    .line 314
    invoke-virtual/range {v0 .. v8}, Lcom/duoku/platform/ui/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Landroid/app/Dialog;

    move-result-object v0

    .line 316
    new-instance v1, Lcom/duoku/platform/ui/b/c$5;

    invoke-direct {v1, p0}, Lcom/duoku/platform/ui/b/c$5;-><init>(Lcom/duoku/platform/ui/b/c;)V

    iput-object v1, p0, Lcom/duoku/platform/ui/b/c;->e:Lcom/duoku/platform/ui/b/c$b;

    .line 336
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 337
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 110
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c;->g:Landroid/os/Handler;

    if-nez v0, :cond_b

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/ui/b/c;->g:Landroid/os/Handler;

    .line 113
    :cond_b
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c;->g:Landroid/os/Handler;

    new-instance v1, Lcom/duoku/platform/ui/b/c$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/duoku/platform/ui/b/c$1;-><init>(Lcom/duoku/platform/ui/b/c;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 730
    invoke-virtual {p0, p1}, Lcom/duoku/platform/ui/b/c;->a(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v2

    .line 731
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    const-string v3, "dk_dialog_install_left"

    invoke-static {v1, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 732
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    const-string v4, "dk_dialog_install_right"

    invoke-static {v1, v4}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 733
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 734
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 735
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    const-string v1, "dk_btn_dialog_back_new"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 736
    iget-object v1, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    const-string v5, "dk_btn_dialog_cancel_new"

    invoke-static {v1, v5}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 737
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 738
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 739
    new-instance v3, Lcom/duoku/platform/ui/b/c$10;

    invoke-direct {v3, p0, v2}, Lcom/duoku/platform/ui/b/c$10;-><init>(Lcom/duoku/platform/ui/b/c;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 748
    new-instance v0, Lcom/duoku/platform/ui/b/c$11;

    invoke-direct {v0, p0, p3, p2, v2}, Lcom/duoku/platform/ui/b/c$11;-><init>(Lcom/duoku/platform/ui/b/c;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 784
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 785
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c;->a:Lcom/duoku/platform/e/a;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/duoku/platform/ui/b/c;->a:Lcom/duoku/platform/e/a;

    invoke-virtual {v0}, Lcom/duoku/platform/e/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 141
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c;->a:Lcom/duoku/platform/e/a;

    invoke-virtual {v0}, Lcom/duoku/platform/e/a;->dismiss()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/ui/b/c;->a:Lcom/duoku/platform/e/a;

    .line 144
    :cond_14
    return-void
.end method

.method public e()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 695
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/duoku/platform/f/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 696
    invoke-static {v0}, Lcom/duoku/platform/DKProCallbackListener;->onSessionFailed(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b/c;->f()V

    .line 700
    return-void
.end method

.method public f()V
    .registers 3

    .prologue
    .line 708
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    if-eqz v0, :cond_9

    .line 710
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 716
    :cond_9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 717
    const-string v1, "com.duoku.close"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 718
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 719
    return-void
.end method

.method public g()I
    .registers 3

    .prologue
    .line 794
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    const-string v1, "dk_payment_btn_retry_selector"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public h()I
    .registers 3

    .prologue
    .line 809
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    const-string v1, "dk_color_333333"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 4

    .prologue
    .line 814
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    const-string v2, "dk_btn_string_back"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 4

    .prologue
    .line 824
    iget-object v0, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/ui/b/c;->f:Landroid/app/Activity;

    const-string v2, "dk_btn_string_check_network"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
