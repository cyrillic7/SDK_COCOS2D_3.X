.class public Lcom/baidu/wallet/base/datamodel/UserData$SpUnoInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/NoProguard;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/wallet/base/datamodel/UserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpUnoInfo"
.end annotation


# static fields
.field public static final UNBIND_CARD_DISABLE_BAIDU_FINANCE:I = 0x0

.field private static final serialVersionUID:J = -0x6a61906ac6137ffbL


# instance fields
.field public post_noise_value:Ljava/lang/String;

.field public sign:Ljava/lang/String;

.field public sp_no:Ljava/lang/String;

.field public sp_uno:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
