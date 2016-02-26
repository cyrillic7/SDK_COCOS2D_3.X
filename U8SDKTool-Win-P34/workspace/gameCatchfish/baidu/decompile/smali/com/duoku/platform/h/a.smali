.class public abstract Lcom/duoku/platform/h/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mAccepTime:Ljava/lang/String;

.field protected mErrorCode:I

.field protected mErrorString:Ljava/lang/String;

.field protected mRequestId:I

.field protected mRequestTag:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/duoku/platform/h/a;->mErrorCode:I

    .line 13
    return-void
.end method


# virtual methods
.method public getAcceptTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/duoku/platform/h/a;->mAccepTime:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .registers 2

    .prologue
    .line 21
    iget v0, p0, Lcom/duoku/platform/h/a;->mErrorCode:I

    return v0
.end method

.method public getErrorString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/duoku/platform/h/a;->mErrorString:Ljava/lang/String;

    return-object v0
.end method

.method public setAccepTime(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/duoku/platform/h/a;->mAccepTime:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setErrorCode(I)V
    .registers 2

    .prologue
    .line 25
    iput p1, p0, Lcom/duoku/platform/h/a;->mErrorCode:I

    .line 26
    return-void
.end method

.method public setErrorString(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 33
    iput-object p1, p0, Lcom/duoku/platform/h/a;->mErrorString:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setRequestId(I)V
    .registers 2

    .prologue
    .line 41
    iput p1, p0, Lcom/duoku/platform/h/a;->mRequestId:I

    .line 42
    return-void
.end method

.method public setRequestTag(I)V
    .registers 2

    .prologue
    .line 37
    iput p1, p0, Lcom/duoku/platform/h/a;->mRequestTag:I

    .line 38
    return-void
.end method
