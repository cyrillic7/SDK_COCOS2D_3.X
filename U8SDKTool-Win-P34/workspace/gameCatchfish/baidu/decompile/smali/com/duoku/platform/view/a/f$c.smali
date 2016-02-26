.class Lcom/duoku/platform/view/a/f$c;
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
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a/f;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/view/a/f;)V
    .registers 2

    .prologue
    .line 277
    iput-object p1, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/view/a/f;Lcom/duoku/platform/view/a/f$c;)V
    .registers 3

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/a/f$c;-><init>(Lcom/duoku/platform/view/a/f;)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/a/f$c;)Lcom/duoku/platform/view/a/f;
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    return-object v0
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 372
    const-string v0, ""

    .line 373
    sparse-switch p3, :sswitch_data_80

    .line 397
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/view/a/f;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v1}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/view/a/f;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_user_request_error"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v1, v0}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/view/a/f;Ljava/lang/String;)V

    .line 402
    :goto_2b
    return-void

    .line 377
    :sswitch_2c
    invoke-static {}, Lcom/duoku/platform/g/b;->b()Z

    move-result v0

    if-nez v0, :cond_38

    .line 379
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0, v1}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/view/a/f;Ljava/lang/String;)V

    goto :goto_2b

    .line 383
    :cond_38
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0, v1}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/view/a/f;Ljava/lang/String;)V

    goto :goto_2b

    .line 388
    :sswitch_3e
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b/c;->a(Landroid/app/Activity;)V

    .line 389
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/b/c;->e()V

    goto :goto_2b

    .line 393
    :sswitch_59
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/view/a/f;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v1}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/view/a/f;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_tip_payment_network_time_out"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 394
    iget-object v1, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v1, v0}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/view/a/f;Ljava/lang/String;)V

    goto :goto_2b

    .line 373
    nop

    :sswitch_data_80
    .sparse-switch
        0x1f8 -> :sswitch_59
        0x3e9 -> :sswitch_2c
        0x3ec -> :sswitch_3e
    .end sparse-switch
.end method

.method public a(ILcom/duoku/platform/h/a;I)V
    .registers 9

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 283
    check-cast p2, Lcom/duoku/platform/ui/a/h;

    .line 284
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-virtual {p2}, Lcom/duoku/platform/ui/a/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/a/f;->b(Lcom/duoku/platform/view/a/f;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-virtual {p2}, Lcom/duoku/platform/ui/a/h;->b()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/a/f;->a(Lcom/duoku/platform/view/a/f;Z)V

    .line 286
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-virtual {p2}, Lcom/duoku/platform/ui/a/h;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/a/f;->c(Lcom/duoku/platform/view/a/f;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-virtual {p2}, Lcom/duoku/platform/ui/a/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/a/f;->d(Lcom/duoku/platform/view/a/f;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->d(Lcom/duoku/platform/view/a/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/duoku/platform/ui/a/h;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 290
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->h(Lcom/duoku/platform/view/a/f;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->d(Lcom/duoku/platform/view/a/f;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->d(Lcom/duoku/platform/view/a/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6f

    .line 294
    :cond_53
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->i(Lcom/duoku/platform/view/a/f;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->c(Lcom/duoku/platform/view/a/f;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->j(Lcom/duoku/platform/view/a/f;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 354
    :goto_6e
    return-void

    .line 298
    :cond_6f
    invoke-virtual {p2}, Lcom/duoku/platform/ui/a/h;->c()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7f

    invoke-virtual {p2}, Lcom/duoku/platform/ui/a/h;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_bf

    .line 300
    :cond_7f
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->j(Lcom/duoku/platform/view/a/f;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->c(Lcom/duoku/platform/view/a/f;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/view/a/f;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v1}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/view/a/f;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v2}, Lcom/duoku/platform/view/a/f;->e(Lcom/duoku/platform/view/a/f;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "dk_message_nomore"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->k(Lcom/duoku/platform/view/a/f;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_6e

    .line 307
    :cond_bf
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0, v2}, Lcom/duoku/platform/view/a/f;->b(Lcom/duoku/platform/view/a/f;I)V

    move v1, v2

    .line 308
    :goto_c5
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->d(Lcom/duoku/platform/view/a/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_12f

    .line 315
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    iget-object v1, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v1}, Lcom/duoku/platform/view/a/f;->d(Lcom/duoku/platform/view/a/f;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/a/f;->c(Lcom/duoku/platform/view/a/f;I)V

    .line 316
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->c(Lcom/duoku/platform/view/a/f;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/duoku/platform/view/a/f$c$1;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/a/f$c$1;-><init>(Lcom/duoku/platform/view/a/f$c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 336
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->n(Lcom/duoku/platform/view/a/f;)Z

    move-result v0

    if-nez v0, :cond_ff

    .line 338
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->c(Lcom/duoku/platform/view/a/f;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 340
    :cond_ff
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->o(Lcom/duoku/platform/view/a/f;)Z

    move-result v0

    if-eqz v0, :cond_157

    .line 342
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->c(Lcom/duoku/platform/view/a/f;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v1}, Lcom/duoku/platform/view/a/f;->p(Lcom/duoku/platform/view/a/f;)Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 343
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0, v2}, Lcom/duoku/platform/view/a/f;->b(Lcom/duoku/platform/view/a/f;Z)V

    .line 350
    :goto_11b
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->j(Lcom/duoku/platform/view/a/f;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->q(Lcom/duoku/platform/view/a/f;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6e

    .line 310
    :cond_12f
    const-string v3, "1"

    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->d(Lcom/duoku/platform/view/a/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/g;

    invoke-virtual {v0}, Lcom/duoku/platform/ui/a/g;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_152

    .line 312
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->f(Lcom/duoku/platform/view/a/f;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3}, Lcom/duoku/platform/view/a/f;->b(Lcom/duoku/platform/view/a/f;I)V

    .line 308
    :cond_152
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_c5

    .line 347
    :cond_157
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$c;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {v0}, Lcom/duoku/platform/view/a/f;->p(Lcom/duoku/platform/view/a/f;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_11b
.end method

.method public a(JJI)V
    .registers 6

    .prologue
    .line 366
    return-void
.end method

.method public a(Lcom/duoku/platform/g/f$a;I)V
    .registers 3

    .prologue
    .line 360
    return-void
.end method
