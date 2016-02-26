.class public Lcom/baidu/bdgame/sdk/obf/cd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:I


# instance fields
.field private a:Lcom/baidu/bdgame/sdk/obf/ce;

.field private b:Landroid/os/Bundle;

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/m",
            "<*>;>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Z

.field private i:Lcom/baidu/bdgame/sdk/obf/lu;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput v0, Lcom/baidu/bdgame/sdk/obf/cd;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v1, p0, Lcom/baidu/bdgame/sdk/obf/cd;->d:I

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->g:I

    .line 36
    iput-boolean v1, p0, Lcom/baidu/bdgame/sdk/obf/cd;->h:Z

    .line 41
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cd;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    .line 42
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/lu;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cd;->l()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->i:Lcom/baidu/bdgame/sdk/obf/lu;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->e:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->f:Ljava/util/List;

    .line 46
    return-void
.end method


# virtual methods
.method final a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .registers 4

    .prologue
    .line 209
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cd;->l()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/app/Activity;)Landroid/view/View;
    .registers 3

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a()V
    .registers 1

    .prologue
    .line 136
    return-void
.end method

.method protected a(ILandroid/content/Intent;)V
    .registers 3

    .prologue
    .line 111
    return-void
.end method

.method public final a(ILjava/lang/String;Landroid/os/Parcelable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 272
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 273
    const-string v1, "intent_key_callback_result_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    const-string v1, "intent_key_callback_result_desc"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string v1, "intent_key_callback_extradata"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cd;->l()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 278
    return-void
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 101
    return-void
.end method

.method final a(Landroid/content/BroadcastReceiver;)V
    .registers 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 219
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cd;->l()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 220
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 178
    sget v0, Lcom/baidu/bdgame/sdk/obf/cd;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/baidu/bdgame/sdk/obf/cd;->c:I

    .line 179
    sget v0, Lcom/baidu/bdgame/sdk/obf/cd;->c:I

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->d:I

    .line 181
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/cd;->d:I

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 182
    return-void
.end method

.method protected final a(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cd;->b:Landroid/os/Bundle;

    .line 81
    return-void
.end method

.method public final a(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 235
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ce;->a(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    .line 236
    return-void
.end method

.method final a(Lcom/baidu/bdgame/sdk/obf/ce$a;ZLandroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 114
    if-eqz p2, :cond_11

    .line 115
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cd;->l()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->f(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->g:I

    .line 116
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p3}, Lcom/baidu/bdgame/sdk/obf/cd;->a(ZLandroid/os/Bundle;)V

    .line 125
    :goto_10
    return-void

    .line 118
    :cond_11
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cd;->l()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->f(Landroid/content/Context;)I

    move-result v0

    .line 119
    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/cd;->g:I

    if-eq v0, v1, :cond_22

    .line 120
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cd;->a()V

    .line 121
    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->g:I

    .line 123
    :cond_22
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p3}, Lcom/baidu/bdgame/sdk/obf/cd;->a(ZLandroid/os/Bundle;)V

    goto :goto_10
.end method

.method final a(Lcom/baidu/bdgame/sdk/obf/m;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/m",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->i:Lcom/baidu/bdgame/sdk/obf/lu;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/lu;->a(Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method a(Z)V
    .registers 2

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/cd;->h:Z

    .line 54
    return-void
.end method

.method protected a(ZLandroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 133
    return-void
.end method

.method final a(IILandroid/content/Intent;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 185
    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/cd;->d:I

    if-eq v1, p1, :cond_6

    .line 190
    :goto_5
    return v0

    .line 188
    :cond_6
    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->d:I

    .line 189
    invoke-virtual {p0, p2, p3}, Lcom/baidu/bdgame/sdk/obf/cd;->a(ILandroid/content/Intent;)V

    .line 190
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final a(ILandroid/os/Bundle;)Z
    .registers 4

    .prologue
    .line 262
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ce;->a(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method protected b()V
    .registers 1

    .prologue
    .line 143
    return-void
.end method

.method public final b(ILjava/lang/String;Landroid/os/Parcelable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 281
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/cd;->a(ILjava/lang/String;Landroid/os/Parcelable;)V

    .line 282
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cd;->j()V

    .line 283
    return-void
.end method

.method public final b(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 244
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ce;->b(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    .line 245
    return-void
.end method

.method public final b(Landroid/os/Bundle;)Z
    .registers 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/ce;->a(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method protected c()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 151
    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1b

    .line 152
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/m;

    .line 153
    if-eqz v0, :cond_17

    .line 154
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/m;->a()Lcom/baidu/bdgame/sdk/obf/n;

    .line 151
    :cond_17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 157
    :cond_1b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 160
    :goto_20
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3c

    .line 161
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 162
    if-eqz v0, :cond_39

    .line 163
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cd;->l()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 160
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 166
    :cond_3c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 167
    return-void
.end method

.method public final c(I)V
    .registers 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->i:Lcom/baidu/bdgame/sdk/obf/lu;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/lu;->a(I)V

    .line 323
    return-void
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method protected e()Z
    .registers 2

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->h:Z

    return v0
.end method

.method protected final h()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->b:Landroid/os/Bundle;

    return-object v0
.end method

.method public final i()Lcom/baidu/bdgame/sdk/obf/ce;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    return-object v0
.end method

.method public final j()V
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->e()V

    .line 227
    return-void
.end method

.method public final k()Landroid/content/Context;
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final l()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->a:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final m()V
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cd;->i:Lcom/baidu/bdgame/sdk/obf/lu;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/lu;->b()V

    .line 330
    return-void
.end method
