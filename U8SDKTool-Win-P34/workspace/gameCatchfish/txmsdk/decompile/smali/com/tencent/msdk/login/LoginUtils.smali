.class public Lcom/tencent/msdk/login/LoginUtils;
.super Ljava/lang/Object;
.source "LoginUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bundleToVector(Landroid/os/Bundle;Lcom/tencent/msdk/api/WakeupRet;)V
    .registers 11
    .param p0, "b"    # Landroid/os/Bundle;
    .param p1, "wakeup"    # Lcom/tencent/msdk/api/WakeupRet;

    .prologue
    .line 280
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 281
    .local v3, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 282
    .local v2, "key":Ljava/lang/String;
    new-instance v1, Lcom/tencent/msdk/api/KVPair;

    invoke-direct {v1}, Lcom/tencent/msdk/api/KVPair;-><init>()V

    .line 283
    .local v1, "item":Lcom/tencent/msdk/api/KVPair;
    iput-object v2, v1, Lcom/tencent/msdk/api/KVPair;->key:Ljava/lang/String;

    .line 284
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 285
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_8

    .line 288
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/tencent/msdk/api/KVPair;->value:Ljava/lang/String;

    .line 289
    iget-object v5, p1, Lcom/tencent/msdk/api/WakeupRet;->extInfo:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 290
    const-string v5, "%s %s (%s)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_8

    .line 293
    .end local v1    # "item":Lcom/tencent/msdk/api/KVPair;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_4e
    return-void
.end method

.method public static checkDiffLogin(Lcom/tencent/msdk/api/LoginRet;)I
    .registers 9
    .param p0, "callbacklr"    # Lcom/tencent/msdk/api/LoginRet;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/16 v2, 0xbba

    const/16 v3, 0xbb9

    const/4 v1, 0x0

    .line 170
    new-instance v0, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v0}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 171
    .local v0, "locallr":Lcom/tencent/msdk/api/LoginRet;
    invoke-static {v0}, Lcom/tencent/msdk/login/LoginUtils;->getLocalLoginRet(Lcom/tencent/msdk/api/LoginRet;)I

    .line 172
    const-string v4, "******************local lr start********************"

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 173
    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/Object;)V

    .line 174
    const-string v4, "******************local lr end*******************"

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 175
    iget-object v4, v0, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 176
    const-string v4, "local and callback is same user!"

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 177
    iget v4, v0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    if-nez v4, :cond_78

    .line 179
    sget v3, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    iget v4, v0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    if-ne v3, v4, :cond_54

    .line 181
    invoke-virtual {v0}, Lcom/tencent/msdk/api/LoginRet;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tencent/msdk/api/LoginRet;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/msdk/login/LoginUtils;->checkOldTokenIsUserful(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-virtual {v0, v6}, Lcom/tencent/msdk/api/LoginRet;->getTokenByType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v6}, Lcom/tencent/msdk/api/LoginRet;->getTokenByType(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/msdk/login/LoginUtils;->checkOldTokenIsUserful(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 274
    :cond_51
    :goto_51
    return v1

    :cond_52
    move v1, v2

    .line 189
    goto :goto_51

    .line 191
    :cond_54
    sget v3, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    iget v4, v0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    if-ne v3, v4, :cond_51

    .line 193
    invoke-virtual {v0}, Lcom/tencent/msdk/api/LoginRet;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tencent/msdk/api/LoginRet;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/msdk/login/LoginUtils;->checkOldTokenIsUserful(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-virtual {v0, v7}, Lcom/tencent/msdk/api/LoginRet;->getTokenByType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v7}, Lcom/tencent/msdk/api/LoginRet;->getTokenByType(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/msdk/login/LoginUtils;->checkOldTokenIsUserful(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_51

    :cond_76
    move v1, v2

    .line 201
    goto :goto_51

    .line 207
    :cond_78
    const/16 v1, 0x7d7

    iget v4, v0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    if-ne v1, v4, :cond_81

    .line 210
    const/16 v1, 0xbbc

    goto :goto_51

    .line 214
    :cond_81
    iget v1, p0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    invoke-static {v1}, Lcom/tencent/msdk/login/LoginUtils;->judgeSwitchUserState(I)Z

    move-result v1

    if-eqz v1, :cond_8b

    move v1, v2

    .line 215
    goto :goto_51

    :cond_8b
    move v1, v3

    .line 217
    goto :goto_51

    .line 222
    :cond_8d
    iget-object v4, v0, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_122

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local openid:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 225
    iget v2, v0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    if-eqz v2, :cond_b7

    const/16 v2, 0x7d7

    iget v4, v0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    if-ne v2, v4, :cond_e7

    .line 232
    :cond_b7
    const-string v2, "local user is valid"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 233
    iget-object v2, p0, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e0

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call back openid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 236
    const/16 v1, 0xbbb

    goto/16 :goto_51

    .line 239
    :cond_e0
    const-string v2, "call back without openid"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_51

    .line 244
    :cond_e7
    const-string v1, "local user is invalid"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11a

    invoke-virtual {p0}, Lcom/tencent/msdk/api/LoginRet;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11a

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call back openid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 249
    const/16 v1, 0xbbb

    goto/16 :goto_51

    .line 252
    :cond_11a
    const-string v1, "call back without openid"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    move v1, v3

    .line 253
    goto/16 :goto_51

    .line 258
    :cond_122
    const-string v1, "local without openid"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15f

    invoke-virtual {p0}, Lcom/tencent/msdk/api/LoginRet;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15f

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call back openid:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 264
    iget v1, p0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    invoke-static {v1}, Lcom/tencent/msdk/login/LoginUtils;->judgeSwitchUserState(I)Z

    move-result v1

    if-eqz v1, :cond_15c

    move v1, v2

    .line 266
    goto/16 :goto_51

    :cond_15c
    move v1, v3

    .line 269
    goto/16 :goto_51

    .line 273
    :cond_15f
    const-string v1, "call back without openid"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    move v1, v3

    .line 274
    goto/16 :goto_51
.end method

.method public static checkOldTokenIsUserful(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "orignToken"    # Ljava/lang/String;
    .param p1, "newToken"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 27
    invoke-static {p1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 39
    :cond_8
    :goto_8
    return v0

    .line 31
    :cond_9
    invoke-static {p0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v0, v1

    .line 33
    goto :goto_8

    .line 35
    :cond_11
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 39
    goto :goto_8
.end method

.method public static getLocalLoginRet(Lcom/tencent/msdk/api/LoginRet;)I
    .registers 9
    .param p0, "ret"    # Lcom/tencent/msdk/api/LoginRet;

    .prologue
    const/4 v6, 0x1

    .line 296
    invoke-static {}, Lcom/tencent/msdk/login/LoginInfoManager;->getInstance()Lcom/tencent/msdk/login/LoginInfoManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/msdk/login/LoginInfoManager;->getLastLoginUserInfo()Lcom/tencent/msdk/api/LoginRet;

    move-result-object v1

    .line 297
    .local v1, "lr":Lcom/tencent/msdk/api/LoginRet;
    iget v3, v1, Lcom/tencent/msdk/api/LoginRet;->platform:I

    iput v3, p0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    .line 298
    iget-object v3, v1, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    .line 299
    invoke-static {v1}, Lcom/tencent/msdk/login/LoginUtils;->validateAccountToken(Lcom/tencent/msdk/api/LoginRet;)I

    move-result v3

    iput v3, p0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 301
    sget v3, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    iget v4, v1, Lcom/tencent/msdk/api/LoginRet;->platform:I

    if-ne v3, v4, :cond_2e

    .line 303
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v3

    iget-object v4, v1, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/tencent/msdk/api/LoginRet;->getTokenByType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6}, Lcom/tencent/msdk/api/LoginRet;->getTokenExpireByType(I)J

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/tencent/msdk/WeGame;->setOpenSdkLoginInfo(Ljava/lang/String;Ljava/lang/String;J)V

    .line 308
    :cond_2e
    iget v3, p0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    sparse-switch v3, :sswitch_data_10e

    .line 343
    const-string v3, "no login record or other error, ask user to login"

    iput-object v3, p0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    .line 346
    :cond_37
    :goto_37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ret.platform = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",flag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",openid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", desc:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pf:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pfkey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/msdk/api/LoginRet;->pf_key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 348
    iget v3, p0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    return v3

    .line 310
    :sswitch_8e
    const-string v3, "success"

    iput-object v3, p0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    .line 311
    iget-object v3, v1, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    .line 312
    iget-object v3, v1, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    .line 313
    iget-object v3, v1, Lcom/tencent/msdk/api/LoginRet;->pf_key:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/msdk/api/LoginRet;->pf_key:Ljava/lang/String;

    .line 314
    iget v3, v1, Lcom/tencent/msdk/api/LoginRet;->platform:I

    iput v3, p0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    .line 315
    iget-object v3, v1, Lcom/tencent/msdk/api/LoginRet;->user_id:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/msdk/api/LoginRet;->user_id:Ljava/lang/String;

    .line 316
    iget-object v3, v1, Lcom/tencent/msdk/api/LoginRet;->token:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_ac
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_be

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/msdk/api/TokenRet;

    .line 317
    .local v2, "tr":Lcom/tencent/msdk/api/TokenRet;
    iget-object v3, p0, Lcom/tencent/msdk/api/LoginRet;->token:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_ac

    .line 319
    .end local v2    # "tr":Lcom/tencent/msdk/api/TokenRet;
    :cond_be
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v3

    iget-object v4, v1, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    iget v5, v1, Lcom/tencent/msdk/api/LoginRet;->platform:I

    invoke-virtual {v3, v4, v5}, Lcom/tencent/msdk/login/LoginManager;->reportLogin(Ljava/lang/String;I)V

    goto/16 :goto_37

    .line 322
    .end local v0    # "i$":Ljava/util/Iterator;
    :sswitch_cb
    const-string v3, "qq access token expired, ask user login again!"

    iput-object v3, p0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    goto/16 :goto_37

    .line 325
    :sswitch_d1
    const-string v3, "qq pay token expired, ask user login again!"

    iput-object v3, p0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    goto/16 :goto_37

    .line 328
    :sswitch_d7
    const-string v3, "wechat access token expired, try to refresh it using refresh token"

    iput-object v3, p0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    .line 329
    iget-object v3, v1, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    .line 330
    iget-object v3, v1, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    .line 331
    iget-object v3, v1, Lcom/tencent/msdk/api/LoginRet;->pf_key:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/msdk/api/LoginRet;->pf_key:Ljava/lang/String;

    .line 332
    iget v3, v1, Lcom/tencent/msdk/api/LoginRet;->platform:I

    iput v3, p0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    .line 333
    iget-object v3, v1, Lcom/tencent/msdk/api/LoginRet;->user_id:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/msdk/api/LoginRet;->user_id:Ljava/lang/String;

    .line 334
    iget-object v3, v1, Lcom/tencent/msdk/api/LoginRet;->token:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_f5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/msdk/api/TokenRet;

    .line 335
    .restart local v2    # "tr":Lcom/tencent/msdk/api/TokenRet;
    iget-object v3, p0, Lcom/tencent/msdk/api/LoginRet;->token:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_f5

    .line 339
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "tr":Lcom/tencent/msdk/api/TokenRet;
    :sswitch_107
    const-string v3, "wechat refresh token is expired, ask user login again!"

    iput-object v3, p0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    goto/16 :goto_37

    .line 308
    nop

    :sswitch_data_10e
    .sparse-switch
        0x0 -> :sswitch_8e
        0x3ee -> :sswitch_cb
        0x3ef -> :sswitch_d1
        0x7d7 -> :sswitch_d7
        0x7d8 -> :sswitch_107
    .end sparse-switch
.end method

.method public static getPlatformFromCallbackInfo(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 3
    .param p0, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 46
    const-string v0, ""

    .line 47
    .local v0, "platformId":Ljava/lang/String;
    const-string v1, "platformId"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 48
    const-string v1, "platformId"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_14
    :goto_14
    return-object v0

    .line 51
    :cond_15
    const-string v1, "platform"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 52
    const-string v1, "platform"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 55
    :cond_28
    const-string v1, "current_uin"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 57
    const-string v0, "qq_m"

    goto :goto_14

    .line 58
    :cond_37
    const-string v1, "wx_callback"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 60
    const-string v0, "wechat"

    goto :goto_14

    .line 61
    :cond_46
    const-string v1, "KEY_REPORT_CHID"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 63
    const-string v0, "mobile"

    goto :goto_14
.end method

.method public static judgeSwitchUserState(I)Z
    .registers 4
    .param p0, "launchPlatform"    # I

    .prologue
    const/4 v0, 0x0

    .line 143
    const-string v1, "login with callback"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 144
    sget v1, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    if-ne v1, p0, :cond_11

    .line 145
    const-string v0, "loginWithUrlInfo: qq"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x1

    .line 155
    :goto_10
    return v0

    .line 147
    :cond_11
    sget v1, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    if-ne v1, p0, :cond_1b

    .line 148
    const-string v1, "loginWithUrlInfo: wechat"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_10

    .line 150
    :cond_1b
    sget v1, Lcom/tencent/msdk/WeGame;->QQHALL:I

    if-ne v1, p0, :cond_25

    .line 151
    const-string v1, "loginWithUrlInfo: hall"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_10

    .line 154
    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loginWithUrlInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public static setmCallbackRet(Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/msdk/api/LoginRet;)V
    .registers 9
    .param p0, "platformId"    # Ljava/lang/String;
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "callbackRet"    # Lcom/tencent/msdk/api/LoginRet;

    .prologue
    .line 105
    const-string v0, "qq_m"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 106
    sget v0, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    iput v0, p2, Lcom/tencent/msdk/api/LoginRet;->platform:I

    .line 107
    const-string v0, "openid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_75

    .line 108
    const-string v0, "openid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    .line 112
    :goto_20
    const-string v0, "atoken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 113
    iget-object v0, p2, Lcom/tencent/msdk/api/LoginRet;->token:Ljava/util/Vector;

    new-instance v1, Lcom/tencent/msdk/api/TokenRet;

    const/4 v2, 0x1

    const-string v3, "atoken"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/32 v4, 0x76a700

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/msdk/api/TokenRet;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_40
    const-string v0, "ptoken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 118
    iget-object v0, p2, Lcom/tencent/msdk/api/LoginRet;->token:Ljava/util/Vector;

    new-instance v1, Lcom/tencent/msdk/api/TokenRet;

    const/4 v2, 0x2

    const-string v3, "ptoken"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/32 v4, 0x7e900

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/msdk/api/TokenRet;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_60
    const-string v0, "pfKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_74

    .line 123
    const-string v0, "pfKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/tencent/msdk/api/LoginRet;->pf_key:Ljava/lang/String;

    .line 133
    :cond_74
    :goto_74
    return-void

    .line 110
    :cond_75
    const-string v0, "current_uin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    goto :goto_20

    .line 125
    :cond_7e
    const-string v0, "wechat"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 126
    sget v0, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    iput v0, p2, Lcom/tencent/msdk/api/LoginRet;->platform:I

    .line 127
    const-string v0, "wx_openId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    goto :goto_74

    .line 128
    :cond_93
    const-string v0, "mobile"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 129
    sget v0, Lcom/tencent/msdk/WeGame;->QQHALL:I

    iput v0, p2, Lcom/tencent/msdk/api/LoginRet;->platform:I

    goto :goto_74

    .line 131
    :cond_a0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handdle unknow platformID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_74
.end method

.method public static validateAccountToken(Lcom/tencent/msdk/api/LoginRet;)I
    .registers 15
    .param p0, "ret"    # Lcom/tencent/msdk/api/LoginRet;

    .prologue
    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long v2, v10, v12

    .line 72
    .local v2, "curTime":J
    iget v10, p0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    sget v11, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    if-ne v10, v11, :cond_31

    .line 73
    const/4 v10, 0x5

    invoke-virtual {p0, v10}, Lcom/tencent/msdk/api/LoginRet;->getTokenExpireByType(I)J

    move-result-wide v8

    .line 75
    .local v8, "refreshExpiredTime":J
    const-wide/32 v10, 0x15180

    sub-long v10, v8, v10

    cmp-long v10, v2, v10

    if-lez v10, :cond_1f

    .line 77
    const/16 v10, 0x7d8

    .line 101
    .end local v8    # "refreshExpiredTime":J
    :goto_1e
    return v10

    .line 79
    .restart local v8    # "refreshExpiredTime":J
    :cond_1f
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Lcom/tencent/msdk/api/LoginRet;->getTokenExpireByType(I)J

    move-result-wide v0

    .line 82
    .local v0, "acExpiredTime":J
    const-wide/16 v10, 0x708

    sub-long v10, v0, v10

    cmp-long v10, v2, v10

    if-lez v10, :cond_2f

    .line 84
    const/16 v10, 0x7d7

    goto :goto_1e

    .line 86
    :cond_2f
    const/4 v10, 0x0

    goto :goto_1e

    .line 89
    .end local v0    # "acExpiredTime":J
    .end local v8    # "refreshExpiredTime":J
    :cond_31
    iget v10, p0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    sget v11, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    if-ne v10, v11, :cond_5b

    .line 90
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/tencent/msdk/api/LoginRet;->getTokenExpireByType(I)J

    move-result-wide v4

    .line 91
    .local v4, "qqAcExpiredTime":J
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/tencent/msdk/api/LoginRet;->getTokenExpireByType(I)J

    move-result-wide v6

    .line 92
    .local v6, "qqPayExpiredTime":J
    const-wide/32 v10, 0x15180

    sub-long v10, v4, v10

    cmp-long v10, v2, v10

    if-lez v10, :cond_4d

    .line 93
    const/16 v10, 0x3ee

    goto :goto_1e

    .line 95
    :cond_4d
    const-wide/32 v10, 0xa8c0

    sub-long v10, v6, v10

    cmp-long v10, v2, v10

    if-lez v10, :cond_59

    .line 96
    const/16 v10, 0x3ef

    goto :goto_1e

    .line 98
    :cond_59
    const/4 v10, 0x0

    goto :goto_1e

    .line 101
    .end local v4    # "qqAcExpiredTime":J
    .end local v6    # "qqPayExpiredTime":J
    :cond_5b
    const/4 v10, -0x1

    goto :goto_1e
.end method
