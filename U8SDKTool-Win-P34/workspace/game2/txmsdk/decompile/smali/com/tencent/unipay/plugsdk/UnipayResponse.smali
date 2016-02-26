.class public Lcom/tencent/unipay/plugsdk/UnipayResponse;
.super Ljava/lang/Object;
.source "UnipayResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/unipay/plugsdk/UnipayResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYCHANEL_ACCT_QBQD:I = 0xb

.field public static final PAYCHANEL_ACCT_QDQB:I = 0x0

.field public static final PAYCHANEL_GOLDCOUPONS:I = 0xa

.field public static final PAYCHANEL_HF:I = 0x9

.field public static final PAYCHANEL_MCARD:I = 0x5

.field public static final PAYCHANEL_QQCARD:I = 0x4

.field public static final PAYCHANEL_TENPAY_BANK:I = 0x2

.field public static final PAYCHANEL_TENPAY_CFT:I = 0x1

.field public static final PAYCHANEL_TENPAY_KJ:I = 0x3

.field public static final PAYCHANEL_UNKOWN:I = -0x1

.field public static final PAYCHANEL_WECHAT:I = 0x8

.field public static final PAYCHANEL_YB:I = 0x7

.field public static final PAYPROVIDESTATE_SUCC:I = 0x0

.field public static final PAYPROVIDESTATE_UNKOWN:I = -0x1

.field public static final PAYRESULT_CANCEL:I = 0x2

.field public static final PAYRESULT_ERROR:I = -0x1

.field public static final PAYRESULT_PARAMERROR:I = 0x3

.field public static final PAYRESULT_SUCC:I = 0x0

.field public static final PAYSTATE_PAYCANCEL:I = 0x1

.field public static final PAYSTATE_PAYERROR:I = 0x2

.field public static final PAYSTATE_PAYSUCC:I = 0x0

.field public static final PAYSTATE_PAYUNKOWN:I = -0x1


# instance fields
.field public extendInfo:Ljava/lang/String;

.field public payChannel:I

.field public payReserve1:Ljava/lang/String;

.field public payReserve2:Ljava/lang/String;

.field public payReserve3:Ljava/lang/String;

.field public payState:I

.field public provideState:I

.field public realSaveNum:I

.field public resultCode:I

.field public resultInerCode:I

.field public resultMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 178
    new-instance v0, Lcom/tencent/unipay/plugsdk/UnipayResponse$1;

    invoke-direct {v0}, Lcom/tencent/unipay/plugsdk/UnipayResponse$1;-><init>()V

    sput-object v0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 206
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->resultMsg:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->extendInfo:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payReserve1:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payReserve2:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payReserve3:Ljava/lang/String;

    .line 72
    iput v2, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->realSaveNum:I

    .line 74
    iput v1, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->resultCode:I

    .line 76
    iput v2, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->resultInerCode:I

    .line 78
    iput v1, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payChannel:I

    .line 80
    iput v1, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payState:I

    .line 82
    iput v1, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->provideState:I

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->resultMsg:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->extendInfo:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payReserve1:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payReserve2:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payReserve3:Ljava/lang/String;

    .line 93
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 97
    iput v1, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->realSaveNum:I

    .line 99
    iput v0, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->resultCode:I

    .line 101
    iput v1, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->resultInerCode:I

    .line 103
    iput v0, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payChannel:I

    .line 105
    iput v0, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payState:I

    .line 107
    iput v0, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->provideState:I

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->resultMsg:Ljava/lang/String;

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->extendInfo:Ljava/lang/String;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payReserve1:Ljava/lang/String;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payReserve2:Ljava/lang/String;

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payReserve3:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setExtendInfo(Ljava/lang/String;)V
    .registers 2
    .param p1, "extendInfo"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->extendInfo:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setPayChannel(I)V
    .registers 2
    .param p1, "payChannel"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payChannel:I

    .line 140
    return-void
.end method

.method public setPayReserve1(Ljava/lang/String;)V
    .registers 2
    .param p1, "payReserve1"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payReserve1:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setPayReserve2(Ljava/lang/String;)V
    .registers 2
    .param p1, "payReserve2"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payReserve2:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setPayReserve3(Ljava/lang/String;)V
    .registers 2
    .param p1, "payReserve3"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payReserve3:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setPayState(I)V
    .registers 2
    .param p1, "payState"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payState:I

    .line 145
    return-void
.end method

.method public setProvideState(I)V
    .registers 2
    .param p1, "provideState"    # I

    .prologue
    .line 149
    iput p1, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->provideState:I

    .line 150
    return-void
.end method

.method public setRealSaveNum(I)V
    .registers 2
    .param p1, "realSaveNum"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->realSaveNum:I

    .line 135
    return-void
.end method

.method public setResultCode(I)V
    .registers 2
    .param p1, "resultCode"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->resultCode:I

    .line 125
    return-void
.end method

.method public setResultInerCode(I)V
    .registers 2
    .param p1, "resultInerCode"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->resultInerCode:I

    .line 130
    return-void
.end method

.method public setResultMsg(Ljava/lang/String;)V
    .registers 2
    .param p1, "resultMsg"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->resultMsg:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "des"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 219
    iget v0, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->resultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget v0, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->resultInerCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget v0, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->realSaveNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget v0, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payChannel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget v0, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget v0, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->provideState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->resultMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->extendInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payReserve1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payReserve2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payReserve3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    return-void
.end method
