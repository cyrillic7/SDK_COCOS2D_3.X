.class public final Lcom/baidu/bdgame/sdk/obf/ce;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/ce$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/view/ViewGroup;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ce$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/m",
            "<*>;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ce;->a:Landroid/app/Activity;

    .line 49
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ce;->b:Landroid/view/ViewGroup;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ce;->c:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ce;->d:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ce;->e:Ljava/util/List;

    .line 54
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/view/ViewGroup;)Lcom/baidu/bdgame/sdk/obf/ce;
    .registers 3

    .prologue
    .line 44
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bdgame/sdk/obf/ce;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method private a(I)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 177
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ce;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 178
    if-ge v0, p1, :cond_37

    .line 179
    const/4 v0, 0x0

    .line 190
    :goto_a
    return v0

    .line 182
    :goto_b
    if-lt p1, v1, :cond_35

    .line 183
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ce;->c:Ljava/util/List;

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ce$a;

    .line 184
    iget-object v3, v0, Lcom/baidu/bdgame/sdk/obf/ce$a;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/cd;->b()V

    .line 185
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ce;->b:Landroid/view/ViewGroup;

    iget-object v4, v0, Lcom/baidu/bdgame/sdk/obf/ce$a;->b:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 186
    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ce$a;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->c()V

    .line 188
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ce;->c:Ljava/util/List;

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 182
    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_b

    :cond_35
    move v0, v1

    .line 190
    goto :goto_a

    :cond_37
    move v2, v0

    goto :goto_b
.end method

.method private b(Landroid/os/Bundle;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ce;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 167
    if-gtz v0, :cond_b

    move v0, v1

    .line 173
    :goto_a
    return v0

    .line 170
    :cond_b
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ce;->c:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ce$a;

    .line 171
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ce;->b:Landroid/view/ViewGroup;

    iget-object v3, v0, Lcom/baidu/bdgame/sdk/obf/ce$a;->b:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 172
    iget-object v2, v0, Lcom/baidu/bdgame/sdk/obf/ce$a;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-virtual {v2, v0, v1, p1}, Lcom/baidu/bdgame/sdk/obf/cd;->a(Lcom/baidu/bdgame/sdk/obf/ce$a;ZLandroid/os/Bundle;)V

    .line 173
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private c(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 147
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ce$a;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/ce$a;-><init>()V

    .line 148
    invoke-virtual {p1, p2}, Lcom/baidu/bdgame/sdk/obf/cd;->a(Landroid/os/Bundle;)V

    .line 149
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/ce$a;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    .line 150
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ce;->a:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Lcom/baidu/bdgame/sdk/obf/cd;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    .line 151
    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ce$a;->b:Landroid/view/View;

    .line 152
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ce;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ce;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_32

    .line 155
    invoke-virtual {p1, v4}, Lcom/baidu/bdgame/sdk/obf/cd;->a(Z)V

    .line 160
    :goto_24
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ce;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 161
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ce;->a:Landroid/app/Activity;

    invoke-virtual {p1, v2, v1}, Lcom/baidu/bdgame/sdk/obf/cd;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 162
    invoke-virtual {p1, v0, v4, p2}, Lcom/baidu/bdgame/sdk/obf/cd;->a(Lcom/baidu/bdgame/sdk/obf/ce$a;ZLandroid/os/Bundle;)V

    .line 163
    return-void

    .line 157
    :cond_32
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/baidu/bdgame/sdk/obf/cd;->a(Z)V

    goto :goto_24
.end method

.method private f()V
    .registers 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ce;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 138
    if-gtz v0, :cond_9

    .line 144
    :goto_8
    return-void

    .line 141
    :cond_9
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ce;->c:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ce$a;

    .line 142
    iget-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ce$a;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cd;->b()V

    .line 143
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ce;->b:Landroid/view/ViewGroup;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ce$a;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_8
.end method

.method private g()Z
    .registers 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ce;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 195
    if-gtz v0, :cond_a

    .line 196
    const/4 v0, 0x0

    .line 199
    :goto_9
    return v0

    .line 198
    :cond_a
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ce;->c:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ce$a;

    .line 199
    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ce$a;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->d()Z

    move-result v0

    goto :goto_9
.end method


# virtual methods
.method public a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .registers 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ce;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 4

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_7

    .line 78
    :cond_6
    :goto_6
    return-void

    .line 73
    :cond_7
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 74
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_6

    .line 76
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_6
.end method

.method public a(IILandroid/content/Intent;)V
    .registers 7

    .prologue
    .line 210
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ce;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_20

    .line 211
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ce;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ce$a;

    .line 212
    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ce$a;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/cd;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 218
    :goto_1b
    return-void

    .line 210
    :cond_1c
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 216
    :cond_20
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Miss Controller onActivityResult, requestCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", resultCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", intent:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_57

    invoke-virtual {p3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/la;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :cond_57
    const-string v0, "null"

    goto :goto_4b
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
    .line 287
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 288
    const-string v1, "intent_key_callback_result_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    const-string v1, "intent_key_callback_result_desc"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v1, "intent_key_callback_extradata"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 292
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 293
    return-void
.end method

.method public a(Landroid/content/BroadcastReceiver;)V
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ce;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 107
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ce;->a()V

    .line 59
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ce;->f()V

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ce;->c(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/m;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/m",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ce;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method a(ILandroid/os/Bundle;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ce;->a(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 133
    :cond_7
    :goto_7
    return v0

    .line 130
    :cond_8
    invoke-direct {p0, p2}, Lcom/baidu/bdgame/sdk/obf/ce;->b(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 133
    const/4 v0, 0x1

    goto :goto_7
.end method

.method a(Landroid/os/Bundle;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 118
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ce;->a(I)Z

    .line 119
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ce;->b(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 120
    const/4 v0, 0x0

    .line 122
    :cond_b
    return v0
.end method

.method public b()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ce;->a:Landroid/app/Activity;

    return-object v0
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
    .line 296
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ce;->a(ILjava/lang/String;Landroid/os/Parcelable;)V

    .line 297
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ce;->e()V

    .line 298
    return-void
.end method

.method public b(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ce;->a()V

    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ce;->a(I)Z

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ce;->c(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    .line 67
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ce;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 226
    const/4 v0, 0x1

    .line 228
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ce;->a(Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_7
.end method

.method public d()V
    .registers 5

    .prologue
    .line 235
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ce;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 236
    if-gtz v0, :cond_9

    .line 242
    :goto_8
    return-void

    .line 239
    :cond_9
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ce;->a()V

    .line 240
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ce;->c:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ce$a;

    .line 241
    iget-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ce$a;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/cd;->a(Lcom/baidu/bdgame/sdk/obf/ce$a;ZLandroid/os/Bundle;)V

    goto :goto_8
.end method

.method public e()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 246
    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ce;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1b

    .line 247
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ce;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/m;

    .line 248
    if-eqz v0, :cond_17

    .line 249
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/m;->a()Lcom/baidu/bdgame/sdk/obf/n;

    .line 246
    :cond_17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 252
    :cond_1b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ce;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 255
    :goto_20
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ce;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3c

    .line 256
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ce;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 257
    if-eqz v0, :cond_39

    .line 258
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 255
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 261
    :cond_3c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ce;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 263
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ce;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4a
    if-ltz v1, :cond_79

    .line 264
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ce;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ce$a;

    .line 265
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ce;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_73

    .line 267
    iget-object v2, v0, Lcom/baidu/bdgame/sdk/obf/ce$a;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/cd;->b()V

    .line 268
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ce;->b:Landroid/view/ViewGroup;

    iget-object v3, v0, Lcom/baidu/bdgame/sdk/obf/ce$a;->b:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 269
    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ce$a;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->c()V

    .line 263
    :goto_6f
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4a

    .line 272
    :cond_73
    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ce$a;->a:Lcom/baidu/bdgame/sdk/obf/cd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->c()V

    goto :goto_6f

    .line 275
    :cond_79
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ce;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 276
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 277
    return-void
.end method
