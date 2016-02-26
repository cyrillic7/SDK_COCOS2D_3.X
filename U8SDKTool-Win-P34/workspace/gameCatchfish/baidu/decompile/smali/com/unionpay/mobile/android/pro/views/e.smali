.class public Lcom/unionpay/mobile/android/pro/views/e;
.super Lcom/unionpay/mobile/android/nocard/views/b;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/unionpay/mobile/android/upviews/a$b;


# instance fields
.field private A:Landroid/view/View$OnClickListener;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:I

.field private s:I

.field private t:Lcom/unionpay/mobile/android/upwidget/a;

.field private u:Lcom/unionpay/mobile/android/upwidget/a;

.field private v:Landroid/widget/TextView;

.field private w:Lcom/unionpay/mobile/android/upviews/a;

.field private x:Z

.field private y:Landroid/os/Handler;

.field private z:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/d;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/unionpay/mobile/android/nocard/views/b;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/d;)V

    const-string v0, "00"

    iput-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->p:Ljava/lang/String;

    iput v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->q:I

    iput v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->r:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->s:I

    iput-object v1, p0, Lcom/unionpay/mobile/android/pro/views/e;->t:Lcom/unionpay/mobile/android/upwidget/a;

    iput-object v1, p0, Lcom/unionpay/mobile/android/pro/views/e;->u:Lcom/unionpay/mobile/android/upwidget/a;

    iput-object v1, p0, Lcom/unionpay/mobile/android/pro/views/e;->v:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/unionpay/mobile/android/pro/views/e;->w:Lcom/unionpay/mobile/android/upviews/a;

    iput-boolean v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->x:Z

    iput-object v1, p0, Lcom/unionpay/mobile/android/pro/views/e;->y:Landroid/os/Handler;

    new-instance v0, Lcom/unionpay/mobile/android/pro/views/f;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/pro/views/f;-><init>(Lcom/unionpay/mobile/android/pro/views/e;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->z:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/unionpay/mobile/android/pro/views/h;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/pro/views/h;-><init>(Lcom/unionpay/mobile/android/pro/views/e;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->A:Landroid/view/View$OnClickListener;

    const/4 v0, 0x6

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->f:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->y:Landroid/os/Handler;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->F:Z

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->x:Z

    const v0, -0x10100c

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/e;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/e;->e()V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pro/views/e;Lcom/unionpay/mobile/android/model/c;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 11

    const/4 v0, 0x3

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->r:I

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/e;->r()Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    move-result-object v2

    if-nez v2, :cond_e

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/e;->b(I)V

    :goto_d
    return-void

    :cond_e
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/unionpay/mobile/android/pro/views/g;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/unionpay/mobile/android/pro/views/g;-><init>(Lcom/unionpay/mobile/android/pro/views/e;Lcom/unionpay/mobile/android/pro/pboc/engine/b;Lcom/unionpay/mobile/android/model/c;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_d
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pro/views/e;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pro/views/e;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/unionpay/mobile/android/pro/views/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pro/views/e;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/e;->o()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/pro/views/e;)Lcom/unionpay/mobile/android/upviews/a;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->w:Lcom/unionpay/mobile/android/upviews/a;

    return-object v0
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/pro/views/e;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/pro/views/e;)Lcom/unionpay/mobile/android/upwidget/a;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->u:Lcom/unionpay/mobile/android/upwidget/a;

    return-object v0
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/pro/views/e;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/unionpay/mobile/android/pro/views/e;)Lcom/unionpay/mobile/android/upwidget/a;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->t:Lcom/unionpay/mobile/android/upwidget/a;

    return-object v0
.end method

.method static synthetic d(Lcom/unionpay/mobile/android/pro/views/e;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->i:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->r:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->x:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/bg;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    const-string v3, "1"

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->t:Lcom/unionpay/mobile/android/upwidget/a;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->t:Lcom/unionpay/mobile/android/upwidget/a;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upwidget/a;->a()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    invoke-static {v2, v3, v0, p1}, Lcom/unionpay/mobile/android/nocard/views/bg;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v2, v1, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_26
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method static synthetic e(Lcom/unionpay/mobile/android/pro/views/e;)Lcom/unionpay/mobile/android/widgets/m;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->b:Lcom/unionpay/mobile/android/widgets/m;

    return-object v0
.end method

.method static synthetic f(Lcom/unionpay/mobile/android/pro/views/e;)Lcom/unionpay/mobile/android/model/b;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    return-object v0
.end method

.method private f(I)V
    .registers 6

    const/4 v0, 0x4

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->r:I

    iput p1, p0, Lcom/unionpay/mobile/android/pro/views/e;->q:I

    iget v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->s:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    const-string v1, "query"

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->ae:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->s:I

    return-void
.end method

.method static synthetic g(Lcom/unionpay/mobile/android/pro/views/e;)Lcom/unionpay/mobile/android/model/b;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    return-object v0
.end method

.method static synthetic h(Lcom/unionpay/mobile/android/pro/views/e;)Lcom/unionpay/mobile/android/model/b;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    return-object v0
.end method

.method static synthetic i(Lcom/unionpay/mobile/android/pro/views/e;)Lcom/unionpay/mobile/android/model/b;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    return-object v0
.end method

.method static synthetic j(Lcom/unionpay/mobile/android/pro/views/e;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->y:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Lcom/unionpay/mobile/android/pro/views/e;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic l(Lcom/unionpay/mobile/android/pro/views/e;)V
    .registers 1

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/e;->j()V

    return-void
.end method

.method static synthetic m(Lcom/unionpay/mobile/android/pro/views/e;)I
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->r:I

    return v0
.end method

.method static synthetic n(Lcom/unionpay/mobile/android/pro/views/e;)V
    .registers 1

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/e;->j()V

    return-void
.end method

.method static synthetic o(Lcom/unionpay/mobile/android/pro/views/e;)Lcom/unionpay/mobile/android/widgets/m;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->b:Lcom/unionpay/mobile/android/widgets/m;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/unionpay/mobile/android/upviews/a$a;)V
    .registers 5

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/upviews/a$a;->a()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p1, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/e;->a(Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    const-string v0, "uppay"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sms elements:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->i:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    const-string v1, "sms"

    iget-object v2, p1, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->r:I

    goto :goto_b
.end method

.method public final a(Lorg/json/JSONObject;)V
    .registers 7

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->x:Z

    iget v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->r:I

    packed-switch v0, :pswitch_data_19a

    :cond_a
    :goto_a
    :pswitch_a
    return-void

    :pswitch_b
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/e;->j()V

    iput v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->r:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->w:Lcom/unionpay/mobile/android/upviews/a;

    sget v1, Lcom/unionpay/mobile/android/global/b;->p:I

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->a(I)V

    goto :goto_a

    :pswitch_18
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/e;->j()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v0, p1, v2}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lcom/unionpay/mobile/android/model/b;Lorg/json/JSONObject;Z)I

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/e;->b(I)V

    :cond_26
    :goto_26
    iput v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->r:I

    goto :goto_a

    :cond_29
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    iput-boolean v3, v0, Lcom/unionpay/mobile/android/model/b;->F:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->u:Lorg/json/JSONArray;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->u:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_42

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/e;->d(I)V

    goto :goto_26

    :cond_42
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->y:Lorg/json/JSONArray;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->y:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_26

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/e;->d(I)V

    goto :goto_26

    :pswitch_57
    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->p:Ljava/lang/String;

    iget v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->s:I

    if-lez v0, :cond_73

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->p:Ljava/lang/String;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    iget v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->q:I

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pro/views/e;->f(I)V

    goto :goto_a

    :cond_73
    iput v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->r:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->p:Ljava/lang/String;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f0

    iget v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->q:I

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/e;->j()V

    iput v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->r:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "result"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/g;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->C:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "openupgrade_flag"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->K:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "temporary_pay_flag"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->L:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "temporary_pay_info"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->M:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "front_url"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->Q:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "front_request"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->R:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "title"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->v:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "succ_info"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/nocard/utils/b;->b(Lorg/json/JSONObject;Lcom/unionpay/mobile/android/model/b;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/nocard/utils/b;->a(Lorg/json/JSONObject;Lcom/unionpay/mobile/android/model/b;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->w:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->w:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->f()V

    :cond_e9
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/e;->d(I)V

    goto/16 :goto_a

    :cond_f0
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->p:Ljava/lang/String;

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_153

    const-string v0, "fail_msg"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/unionpay/mobile/android/pro/views/e;->r:I

    if-ne v1, v4, :cond_116

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/e;->a(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_116
    new-instance v1, Lcom/unionpay/mobile/android/pro/views/i;

    invoke-direct {v1, p0}, Lcom/unionpay/mobile/android/pro/views/i;-><init>(Lcom/unionpay/mobile/android/pro/views/e;)V

    new-instance v2, Lcom/unionpay/mobile/android/pro/views/j;

    invoke-direct {v2, p0}, Lcom/unionpay/mobile/android/pro/views/j;-><init>(Lcom/unionpay/mobile/android/pro/views/e;)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v3, v3, Lcom/unionpay/mobile/android/model/b;->A:Z

    if-eqz v3, :cond_13e

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/e;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v3, v1, v2}, Lcom/unionpay/mobile/android/widgets/m;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/e;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->Y:Ljava/lang/String;

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->W:Ljava/lang/String;

    sget-object v4, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v4, v4, Lcom/unionpay/mobile/android/languages/c;->X:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_13e
    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->b:Lcom/unionpay/mobile/android/widgets/m;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/unionpay/mobile/android/widgets/m;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/e;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->Y:Ljava/lang/String;

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->W:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_153
    iget v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->s:I

    if-gtz v0, :cond_a

    iget v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->q:I

    if-ne v0, v4, :cond_164

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->af:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/unionpay/mobile/android/pro/views/e;->a(Ljava/lang/String;Z)V

    goto/16 :goto_a

    :cond_164
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->af:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/e;->a(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_16d
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unionpay/mobile/android/utils/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->ae:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->ae:Ljava/lang/String;

    if-eqz v0, :cond_189

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->ae:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_18f

    :cond_189
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/e;->b(I)V

    goto/16 :goto_a

    :cond_18f
    const/16 v0, 0x14

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->s:I

    iget v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->r:I

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pro/views/e;->f(I)V

    goto/16 :goto_a

    :pswitch_data_19a
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_16d
        :pswitch_57
        :pswitch_a
        :pswitch_18
    .end packed-switch
.end method

.method public final a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->v:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/e;->v:Landroid/widget/TextView;

    if-nez p1, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_c
    return-void

    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected final a(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->x:Z

    return v0
.end method

.method protected final b()V
    .registers 6

    const/4 v4, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lcom/unionpay/mobile/android/widgets/ax;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/e;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->v:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p0}, Lcom/unionpay/mobile/android/widgets/ax;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/unionpay/mobile/android/widgets/ax$a;)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method protected final c()V
    .registers 14

    const/4 v12, 0x3

    const/4 v8, 0x0

    const/4 v0, 0x1

    const/4 v11, -0x1

    const/4 v10, -0x2

    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/e;->d:Landroid/content/Context;

    invoke-direct {v9, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setId(I)V

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v11, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v9, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/unionpay/mobile/android/upviews/a;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->u:Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/unionpay/mobile/android/pro/views/e;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v4}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->b()J

    move-result-wide v4

    iget-object v6, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v7, v6, Lcom/unionpay/mobile/android/model/b;->al:Ljava/lang/String;

    move-object v6, p0

    invoke-direct/range {v1 .. v8}, Lcom/unionpay/mobile/android/upviews/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;JLcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/pro/views/e;->w:Lcom/unionpay/mobile/android/upviews/a;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->w:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v9, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v11, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v12, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v3, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/e;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/e;->i()Z

    move-result v2

    if-nez v2, :cond_82

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->ag:Lorg/json/JSONObject;

    if-nez v2, :cond_82

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->ah:Lorg/json/JSONObject;

    if-eqz v2, :cond_be

    :cond_82
    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->ag:Lorg/json/JSONObject;

    if-eqz v2, :cond_9c

    new-instance v2, Lcom/unionpay/mobile/android/upwidget/a;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/e;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->ag:Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/unionpay/mobile/android/pro/views/e;->A:Landroid/view/View$OnClickListener;

    invoke-direct {v2, v3, v4, v5}, Lcom/unionpay/mobile/android/upwidget/a;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Landroid/view/View$OnClickListener;)V

    iput-object v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->u:Lcom/unionpay/mobile/android/upwidget/a;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->u:Lcom/unionpay/mobile/android/upwidget/a;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_9c
    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->ah:Lorg/json/JSONObject;

    if-eqz v2, :cond_be

    new-instance v2, Lcom/unionpay/mobile/android/upwidget/a;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/e;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->ah:Lorg/json/JSONObject;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/unionpay/mobile/android/upwidget/a;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Landroid/view/View$OnClickListener;)V

    iput-object v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->t:Lcom/unionpay/mobile/android/upwidget/a;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v3, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/e;->t:Lcom/unionpay/mobile/android/upwidget/a;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_be
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/e;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->v:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->v:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->x:Lorg/json/JSONObject;

    const-string v4, "label"

    invoke-static {v3, v4}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->v:Landroid/widget/TextView;

    sget v3, Lcom/unionpay/mobile/android/global/b;->i:F

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->v:Landroid/widget/TextView;

    invoke-static {}, Lcom/unionpay/mobile/android/pro/views/e;->p()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->v:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->v:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/e;->w:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v3, :cond_fb

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/e;->w:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v3}, Lcom/unionpay/mobile/android/upviews/a;->e()Z

    move-result v3

    if-eqz v3, :cond_fc

    :cond_fb
    move v8, v0

    :cond_fc
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    sget v0, Lcom/unionpay/mobile/android/global/a;->n:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/e;->v:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->v:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/e;->z:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v0, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->d:Landroid/content/Context;

    const/high16 v1, 0x41200000

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->l:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/e;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->i:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "\"card\":\""

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    iget v2, v2, Lcom/unionpay/mobile/android/model/b;->I:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/model/c;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/model/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uppay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cmd:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ele:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/e;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v1, p1, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->r:I

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_22

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "action_resp_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "action_resp_message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0000"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    if-eqz v0, :cond_22

    invoke-virtual {p0, v3, v0}, Lcom/unionpay/mobile/android/pro/views/e;->a(ILjava/lang/String;)V

    :cond_22
    :goto_22
    const/4 v0, 0x1

    return v0

    :cond_24
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->ak:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/unionpay/mobile/android/pro/views/e;->a(Ljava/lang/String;Z)V

    goto :goto_22
.end method

.method public final l()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->w:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->d()Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->F:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->x:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    iput-boolean v1, v0, Lcom/unionpay/mobile/android/model/b;->F:Z

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/e;->n()V

    goto :goto_9

    :cond_1c
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->a:Lcom/unionpay/mobile/android/model/b;

    iput-boolean v1, v0, Lcom/unionpay/mobile/android/model/b;->F:Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/e;->a(I)V

    goto :goto_9
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/e;->w:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->d()Z

    return-void
.end method

.method public r()Lcom/unionpay/mobile/android/pro/pboc/engine/b;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
