.class public final Lcom/duoku/platform/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Lcom/duoku/platform/util/k;


# instance fields
.field private a:Landroid/content/Intent;

.field private b:Landroid/content/Context;

.field private c:Lcom/duoku/platform/k/e;

.field private d:Lcom/duoku/platform/ui/DKContainerActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-class v0, Lcom/duoku/platform/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/c/a;->e:Lcom/duoku/platform/util/k;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/duoku/platform/k/e;

    invoke-direct {v0}, Lcom/duoku/platform/k/e;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/c/a;->c:Lcom/duoku/platform/k/e;

    .line 39
    return-void
.end method


# virtual methods
.method public a()Lcom/duoku/platform/ui/DKContainerActivity;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/duoku/platform/c/a;->d:Lcom/duoku/platform/ui/DKContainerActivity;

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;Lcom/duoku/platform/IDKSDKCallBack;)V
    .registers 8

    .prologue
    .line 50
    invoke-static {p3}, Lcom/duoku/platform/a;->a(Lcom/duoku/platform/IDKSDKCallBack;)J

    move-result-wide v0

    .line 51
    const-string v2, "sdk_callback_id"

    invoke-virtual {p2, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 52
    iput-object p2, p0, Lcom/duoku/platform/c/a;->a:Landroid/content/Intent;

    .line 53
    iput-object p1, p0, Lcom/duoku/platform/c/a;->b:Landroid/content/Context;

    .line 54
    invoke-static {p3}, Lcom/duoku/platform/DKProCallbackListener;->setOnLoginProcessListener(Lcom/duoku/platform/IDKSDKCallBack;)V

    .line 55
    const-string v0, "function_code"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 57
    sget-object v1, Lcom/duoku/platform/c/a;->e:Lcom/duoku/platform/util/k;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "function code is"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoku/platform/util/k;->c(Ljava/lang/String;)V

    .line 59
    const/16 v1, 0x3e8

    if-ge v1, v0, :cond_3b

    const/16 v1, 0x44c

    if-ge v0, v1, :cond_3b

    .line 62
    invoke-static {p3}, Lcom/duoku/platform/DKProCallbackListener;->setmOnsessionFailedListener(Lcom/duoku/platform/IDKSDKCallBack;)V

    .line 63
    iget-object v1, p0, Lcom/duoku/platform/c/a;->c:Lcom/duoku/platform/k/e;

    invoke-virtual {v1, v0, p3}, Lcom/duoku/platform/k/e;->a(ILcom/duoku/platform/IDKSDKCallBack;)V

    .line 65
    :cond_3b
    const/16 v1, 0xbb8

    if-ge v1, v0, :cond_49

    const/16 v1, 0xc1c

    if-ge v0, v1, :cond_49

    .line 68
    iget-object v1, p0, Lcom/duoku/platform/c/a;->c:Lcom/duoku/platform/k/e;

    invoke-virtual {v1, v0, p3}, Lcom/duoku/platform/k/e;->a(ILcom/duoku/platform/IDKSDKCallBack;)V

    .line 98
    :cond_48
    :goto_48
    return-void

    .line 70
    :cond_49
    const/16 v1, 0xfa0

    if-ge v1, v0, :cond_57

    const/16 v1, 0x1004

    if-ge v0, v1, :cond_57

    .line 72
    iget-object v1, p0, Lcom/duoku/platform/c/a;->c:Lcom/duoku/platform/k/e;

    invoke-virtual {v1, v0, p3}, Lcom/duoku/platform/k/e;->a(ILcom/duoku/platform/IDKSDKCallBack;)V

    goto :goto_48

    .line 74
    :cond_57
    const/16 v1, 0x1388

    if-ge v1, v0, :cond_65

    const/16 v1, 0x13ec

    if-ge v0, v1, :cond_65

    .line 76
    iget-object v1, p0, Lcom/duoku/platform/c/a;->c:Lcom/duoku/platform/k/e;

    invoke-virtual {v1, v0, p3}, Lcom/duoku/platform/k/e;->a(ILcom/duoku/platform/IDKSDKCallBack;)V

    goto :goto_48

    .line 78
    :cond_65
    const/16 v1, 0x1770

    if-ge v1, v0, :cond_73

    const/16 v1, 0x17d4

    if-ge v0, v1, :cond_73

    .line 80
    iget-object v1, p0, Lcom/duoku/platform/c/a;->c:Lcom/duoku/platform/k/e;

    invoke-virtual {v1, v0, p3}, Lcom/duoku/platform/k/e;->a(ILcom/duoku/platform/IDKSDKCallBack;)V

    goto :goto_48

    .line 82
    :cond_73
    const/16 v1, 0x2328

    if-ge v1, v0, :cond_81

    const/16 v1, 0x238c

    if-ge v0, v1, :cond_81

    .line 84
    iget-object v1, p0, Lcom/duoku/platform/c/a;->c:Lcom/duoku/platform/k/e;

    invoke-virtual {v1, v0, p3}, Lcom/duoku/platform/k/e;->a(ILcom/duoku/platform/IDKSDKCallBack;)V

    goto :goto_48

    .line 86
    :cond_81
    const/16 v1, 0x1b58

    if-ge v1, v0, :cond_8f

    const/16 v1, 0x1bbc

    if-ge v0, v1, :cond_8f

    .line 88
    iget-object v1, p0, Lcom/duoku/platform/c/a;->c:Lcom/duoku/platform/k/e;

    invoke-virtual {v1, v0, p3}, Lcom/duoku/platform/k/e;->a(ILcom/duoku/platform/IDKSDKCallBack;)V

    goto :goto_48

    .line 90
    :cond_8f
    const/16 v1, 0x1f40

    if-ge v1, v0, :cond_9d

    const/16 v1, 0x1fa4

    if-ge v0, v1, :cond_9d

    .line 92
    iget-object v1, p0, Lcom/duoku/platform/c/a;->c:Lcom/duoku/platform/k/e;

    invoke-virtual {v1, v0, p3}, Lcom/duoku/platform/k/e;->a(ILcom/duoku/platform/IDKSDKCallBack;)V

    goto :goto_48

    .line 94
    :cond_9d
    const/16 v1, 0x2710

    if-ge v1, v0, :cond_48

    const/16 v1, 0x2774

    if-ge v0, v1, :cond_48

    .line 96
    iget-object v1, p0, Lcom/duoku/platform/c/a;->c:Lcom/duoku/platform/k/e;

    invoke-virtual {v1, v0, p3}, Lcom/duoku/platform/k/e;->a(ILcom/duoku/platform/IDKSDKCallBack;)V

    goto :goto_48
.end method

.method public a(Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V
    .registers 7

    .prologue
    .line 139
    iget-object v0, p0, Lcom/duoku/platform/c/a;->d:Lcom/duoku/platform/ui/DKContainerActivity;

    if-eqz v0, :cond_a

    .line 141
    iget-object v0, p0, Lcom/duoku/platform/c/a;->d:Lcom/duoku/platform/ui/DKContainerActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V

    .line 158
    :cond_9
    :goto_9
    return-void

    .line 145
    :cond_a
    sget-object v0, Lcom/duoku/platform/c/b;->p:Lcom/duoku/platform/c/b;

    if-ne p1, v0, :cond_2c

    .line 147
    iget-object v0, p0, Lcom/duoku/platform/c/a;->a:Landroid/content/Intent;

    const-string v1, "auto_login_state"

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    iget-object v0, p0, Lcom/duoku/platform/c/a;->a:Landroid/content/Intent;

    const-string v1, "sdk_view_id"

    sget-object v2, Lcom/duoku/platform/c/c;->x:Lcom/duoku/platform/c/c;

    invoke-virtual {v2}, Lcom/duoku/platform/c/c;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    iget-object v0, p0, Lcom/duoku/platform/c/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/c/a;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 151
    :cond_2c
    sget-object v0, Lcom/duoku/platform/c/b;->s:Lcom/duoku/platform/c/b;

    if-ne p1, v0, :cond_9

    .line 153
    iget-object v0, p0, Lcom/duoku/platform/c/a;->a:Landroid/content/Intent;

    const-string v1, "auto_login_state"

    const/16 v2, 0x3ec

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    iget-object v0, p0, Lcom/duoku/platform/c/a;->a:Landroid/content/Intent;

    const-string v1, "sdk_view_id"

    sget-object v2, Lcom/duoku/platform/c/c;->x:Lcom/duoku/platform/c/c;

    invoke-virtual {v2}, Lcom/duoku/platform/c/c;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    iget-object v0, p0, Lcom/duoku/platform/c/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/c/a;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_9
.end method

.method public a(Lcom/duoku/platform/c/c;Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V
    .registers 7

    .prologue
    .line 126
    invoke-virtual {p1}, Lcom/duoku/platform/c/c;->a()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_15

    invoke-virtual {p1}, Lcom/duoku/platform/c/c;->a()I

    move-result v0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_15

    .line 128
    iget-object v0, p0, Lcom/duoku/platform/c/a;->c:Lcom/duoku/platform/k/e;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/duoku/platform/k/e;->a(Lcom/duoku/platform/c/c;Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V

    .line 130
    :cond_15
    invoke-virtual {p1}, Lcom/duoku/platform/c/c;->a()I

    move-result v0

    const/16 v1, 0x12c

    if-le v0, v1, :cond_2a

    invoke-virtual {p1}, Lcom/duoku/platform/c/c;->a()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_2a

    .line 132
    iget-object v0, p0, Lcom/duoku/platform/c/a;->c:Lcom/duoku/platform/k/e;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/duoku/platform/k/e;->a(Lcom/duoku/platform/c/c;Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V

    .line 134
    :cond_2a
    return-void
.end method

.method public a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V
    .registers 6

    .prologue
    .line 109
    iget-object v0, p0, Lcom/duoku/platform/c/a;->d:Lcom/duoku/platform/ui/DKContainerActivity;

    if-nez v0, :cond_2a

    .line 111
    iget-object v0, p0, Lcom/duoku/platform/c/a;->a:Landroid/content/Intent;

    const-string v1, "sdk_view_id"

    invoke-virtual {p1}, Lcom/duoku/platform/c/c;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    const-string v1, "dk_autologin_info"

    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 114
    iget-object v1, p0, Lcom/duoku/platform/c/a;->a:Landroid/content/Intent;

    const-string v2, "dk_autologin_info"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 115
    iget-object v0, p0, Lcom/duoku/platform/c/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/c/a;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 121
    :goto_29
    return-void

    .line 119
    :cond_2a
    iget-object v0, p0, Lcom/duoku/platform/c/a;->d:Lcom/duoku/platform/ui/DKContainerActivity;

    invoke-virtual {v0, p1, p2}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_29
.end method

.method public a(Lcom/duoku/platform/ui/DKContainerActivity;)V
    .registers 2

    .prologue
    .line 169
    iput-object p1, p0, Lcom/duoku/platform/c/a;->d:Lcom/duoku/platform/ui/DKContainerActivity;

    .line 175
    return-void
.end method

.method public b()Lcom/duoku/platform/b/a;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/duoku/platform/c/a;->c:Lcom/duoku/platform/k/e;

    return-object v0
.end method
