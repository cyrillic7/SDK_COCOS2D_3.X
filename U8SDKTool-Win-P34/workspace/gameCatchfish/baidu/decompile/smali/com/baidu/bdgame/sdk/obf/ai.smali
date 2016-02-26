.class public Lcom/baidu/bdgame/sdk/obf/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Lcom/baidu/bdgame/sdk/obf/s;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ai;->f:Z

    .line 30
    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ai;->g:Z

    .line 36
    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ai;->i:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;
    .registers 6

    .prologue
    .line 160
    new-instance v1, Lcom/baidu/platformsdk/BDPlatformUser;

    invoke-direct {v1}, Lcom/baidu/platformsdk/BDPlatformUser;-><init>()V

    .line 161
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ai;->k:Lcom/baidu/bdgame/sdk/obf/s;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setUid(Ljava/lang/String;)V

    .line 162
    sget-object v0, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Unknown:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    .line 163
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ai;->k:Lcom/baidu/bdgame/sdk/obf/s;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/s;->a()I

    move-result v2

    .line 164
    if-nez v2, :cond_1a

    .line 165
    sget-object v0, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Baidu:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    .line 167
    :cond_1a
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    .line 168
    sget-object v0, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Duoku:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    .line 170
    :cond_1f
    const/4 v3, 0x2

    if-ne v2, v3, :cond_24

    .line 171
    sget-object v0, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->_91:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    .line 173
    :cond_24
    invoke-virtual {v1, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setUserType(Lcom/baidu/platformsdk/BDPlatformUser$UserType;)V

    .line 174
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ai;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setBaiduOAuthAccessToken(Ljava/lang/String;)V

    .line 175
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ai;->h:Z

    invoke-virtual {v1, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setGuest(Z)V

    .line 176
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ai;->h:Z

    if-eqz v0, :cond_59

    .line 178
    const-string v0, "bdp_account_autologin_guest"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setDisplayName(Ljava/lang/String;)V

    .line 182
    :goto_42
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ai;->i:Z

    invoke-virtual {v1, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setThirdPartyUser(Z)V

    .line 183
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ai;->l:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setBaiduOAuthUid(Ljava/lang/String;)V

    .line 185
    if-nez v2, :cond_58

    .line 186
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ai;->m:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setBaiduBDUSS(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ai;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setBaiduAccountName(Ljava/lang/String;)V

    .line 189
    :cond_58
    return-object v1

    .line 180
    :cond_59
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ai;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/platformsdk/BDPlatformUser;->setDisplayName(Ljava/lang/String;)V

    goto :goto_42
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ai;->m:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/s;)V
    .registers 2

    .prologue
    .line 113
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ai;->k:Lcom/baidu/bdgame/sdk/obf/s;

    .line 114
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ai;->m:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/ai;->f:Z

    .line 67
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ai;)Z
    .registers 4

    .prologue
    .line 153
    if-nez p1, :cond_4

    .line 154
    const/4 v0, 0x0

    .line 156
    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ai;->k:Lcom/baidu/bdgame/sdk/obf/s;

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ai;->h()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/s;->a(Lcom/baidu/bdgame/sdk/obf/s;)Z

    move-result v0

    goto :goto_3
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ai;->l:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/ai;->g:Z

    .line 98
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ai;->f:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ai;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 73
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ai;->a:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public c(Z)V
    .registers 2

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/ai;->h:Z

    .line 134
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ai;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ai;->b:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public d(Z)V
    .registers 2

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/ai;->i:Z

    .line 142
    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ai;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ai;->c:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 105
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ai;->d:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ai;->g:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ai;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 121
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ai;->e:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public h()Lcom/baidu/bdgame/sdk/obf/s;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ai;->k:Lcom/baidu/bdgame/sdk/obf/s;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 149
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ai;->j:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ai;->e:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ai;->h:Z

    return v0
.end method

.method public k()Z
    .registers 2

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ai;->h:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ai;->i:Z

    return v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ai;->j:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 3

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ai;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 196
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ai;->m()Ljava/lang/String;

    move-result-object v0

    .line 205
    :goto_e
    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/lf;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 206
    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/lf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    :cond_18
    return-object v0

    .line 197
    :cond_19
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ai;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 198
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ai;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 199
    :cond_28
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ai;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 200
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ai;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 202
    :cond_37
    const-string v0, ""

    goto :goto_e
.end method
