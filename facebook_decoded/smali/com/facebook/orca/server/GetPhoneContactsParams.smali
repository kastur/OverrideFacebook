.class public Lcom/facebook/orca/server/GetPhoneContactsParams;
.super Ljava/lang/Object;
.source "GetPhoneContactsParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/server/GetPhoneContactsParams;",
            ">;"
        }
    .end annotation
.end field

.field public static a:I


# instance fields
.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput v0, Lcom/facebook/orca/server/GetPhoneContactsParams;->a:I

    .line 27
    new-instance v0, Lcom/facebook/orca/server/GetPhoneContactsParams$1;

    invoke-direct {v0}, Lcom/facebook/orca/server/GetPhoneContactsParams$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/server/GetPhoneContactsParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/server/GetPhoneContactsParams;->b:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/server/GetPhoneContactsParams;->c:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/GetPhoneContactsParams;->d:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/GetPhoneContactsParams;->e:Ljava/lang/String;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/facebook/orca/server/GetPhoneContactsParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static newBuilder()Lcom/facebook/orca/server/GetPhoneContactsParamsBuilder;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/facebook/orca/server/GetPhoneContactsParamsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/server/GetPhoneContactsParamsBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 108
    iget v0, p0, Lcom/facebook/orca/server/GetPhoneContactsParams;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Lcom/facebook/orca/server/GetPhoneContactsParams;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v0, p0, Lcom/facebook/orca/server/GetPhoneContactsParams;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/facebook/orca/server/GetPhoneContactsParams;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    return-void
.end method
