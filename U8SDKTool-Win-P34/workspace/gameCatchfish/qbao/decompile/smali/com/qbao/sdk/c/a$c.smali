.class public Lcom/qbao/sdk/c/a$c;
.super Ljava/lang/Object;
.source "Field.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qbao/sdk/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# static fields
.field public static final ID:Ljava/lang/String; = "userId"

.field public static final NAME:Ljava/lang/String; = "userName"


# instance fields
.field final synthetic dW:Lcom/qbao/sdk/c/a;


# direct methods
.method public constructor <init>(Lcom/qbao/sdk/c/a;)V
    .registers 2

    .prologue
    .line 12
    iput-object p1, p0, Lcom/qbao/sdk/c/a$c;->dW:Lcom/qbao/sdk/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
