.class public Lcom/duoku/platform/bean/SynLoginUserInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/util/DkNoProguard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;
    }
.end annotation


# instance fields
.field private bduid:Ljava/lang/String;

.field private dktoken:Ljava/lang/String;

.field private dkuid:Ljava/lang/String;

.field private logintype:Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

.field private ramseckey_91:Ljava/lang/String;

.field private sessionid_91:Ljava/lang/String;

.field private token_91:Ljava/lang/String;

.field private uid_91:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/duoku/platform/bean/SynLoginUserInfo;->username:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/duoku/platform/bean/SynLoginUserInfo;->dkuid:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/duoku/platform/bean/SynLoginUserInfo;->dktoken:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/duoku/platform/bean/SynLoginUserInfo;->bduid:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/duoku/platform/bean/SynLoginUserInfo;->uid_91:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/duoku/platform/bean/SynLoginUserInfo;->token_91:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/duoku/platform/bean/SynLoginUserInfo;->sessionid_91:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/duoku/platform/bean/SynLoginUserInfo;->ramseckey_91:Ljava/lang/String;

    .line 5
    return-void
.end method


# virtual methods
.method public getBduid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/duoku/platform/bean/SynLoginUserInfo;->bduid:Ljava/lang/String;

    return-object v0
.end method

.method public getDktoken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/duoku/platform/bean/SynLoginUserInfo;->dktoken:Ljava/lang/String;

    return-object v0
.end method

.method public getDkuid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/duoku/platform/bean/SynLoginUserInfo;->dkuid:Ljava/lang/String;

    return-object v0
.end method

.method public getLogintype()Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/duoku/platform/bean/SynLoginUserInfo;->logintype:Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    return-object v0
.end method

.method public getRamseckey_91()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/duoku/platform/bean/SynLoginUserInfo;->ramseckey_91:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionid_91()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/duoku/platform/bean/SynLoginUserInfo;->sessionid_91:Ljava/lang/String;

    return-object v0
.end method

.method public getToken_91()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/duoku/platform/bean/SynLoginUserInfo;->token_91:Ljava/lang/String;

    return-object v0
.end method

.method public getUid_91()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/duoku/platform/bean/SynLoginUserInfo;->uid_91:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/duoku/platform/bean/SynLoginUserInfo;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setBduid(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lcom/duoku/platform/bean/SynLoginUserInfo;->bduid:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setDktoken(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 63
    iput-object p1, p0, Lcom/duoku/platform/bean/SynLoginUserInfo;->dktoken:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setDkuid(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/duoku/platform/bean/SynLoginUserInfo;->dkuid:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setLogintype(Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;)V
    .registers 2

    .prologue
    .line 73
    iput-object p1, p0, Lcom/duoku/platform/bean/SynLoginUserInfo;->logintype:Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    .line 74
    return-void
.end method

.method public setRamseckey_91(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 123
    iput-object p1, p0, Lcom/duoku/platform/bean/SynLoginUserInfo;->ramseckey_91:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setSessionid_91(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 113
    iput-object p1, p0, Lcom/duoku/platform/bean/SynLoginUserInfo;->sessionid_91:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setToken_91(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 103
    iput-object p1, p0, Lcom/duoku/platform/bean/SynLoginUserInfo;->token_91:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setUid_91(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 93
    iput-object p1, p0, Lcom/duoku/platform/bean/SynLoginUserInfo;->uid_91:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 43
    iput-object p1, p0, Lcom/duoku/platform/bean/SynLoginUserInfo;->username:Ljava/lang/String;

    .line 44
    return-void
.end method
