.class public Lcom/duoku/platform/entry/DkNewAppVersionInfo;
.super Lcom/duoku/platform/h/a;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/util/DkNoProguard;


# instance fields
.field private apk_size:Ljava/lang/String;

.field private apk_url:Ljava/lang/String;

.field private apk_version:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/duoku/platform/h/a;-><init>()V

    return-void
.end method


# virtual methods
.method public getApk_size()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/duoku/platform/entry/DkNewAppVersionInfo;->apk_size:Ljava/lang/String;

    return-object v0
.end method

.method public getApk_url()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/duoku/platform/entry/DkNewAppVersionInfo;->apk_url:Ljava/lang/String;

    return-object v0
.end method

.method public getApk_version()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/duoku/platform/entry/DkNewAppVersionInfo;->apk_version:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/duoku/platform/entry/DkNewAppVersionInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 19
    iget v0, p0, Lcom/duoku/platform/entry/DkNewAppVersionInfo;->type:I

    return v0
.end method

.method public setApk_size(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/duoku/platform/entry/DkNewAppVersionInfo;->apk_size:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setApk_url(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/duoku/platform/entry/DkNewAppVersionInfo;->apk_url:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setApk_version(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/duoku/platform/entry/DkNewAppVersionInfo;->apk_version:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/duoku/platform/entry/DkNewAppVersionInfo;->description:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setType(I)V
    .registers 2

    .prologue
    .line 23
    iput p1, p0, Lcom/duoku/platform/entry/DkNewAppVersionInfo;->type:I

    .line 24
    return-void
.end method
