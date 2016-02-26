.class public Lcom/qbao/sdk/c/a$b;
.super Ljava/lang/Object;
.source "Field.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qbao/sdk/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# static fields
.field public static final DATA:Ljava/lang/String; = "data"

.field public static final ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final STATUS:Ljava/lang/String; = "responseCode"

.field public static final dX:Ljava/lang/String; = "errorMsg"


# instance fields
.field final synthetic dW:Lcom/qbao/sdk/c/a;


# direct methods
.method public constructor <init>(Lcom/qbao/sdk/c/a;)V
    .registers 2

    .prologue
    .line 5
    iput-object p1, p0, Lcom/qbao/sdk/c/a$b;->dW:Lcom/qbao/sdk/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
