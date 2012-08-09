.class public Lcom/facebook/orca/attachments/MediaResource;
.super Ljava/lang/Object;
.source "MediaResource.java"

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
            "Lcom/facebook/orca/attachments/MediaResource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/orca/attachments/MediaResource$Type;

.field private final b:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/facebook/orca/attachments/MediaResource$1;

    invoke-direct {v0}, Lcom/facebook/orca/attachments/MediaResource$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/attachments/MediaResource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/facebook/orca/attachments/MediaResource$Type;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/facebook/orca/attachments/MediaResource;->a:Lcom/facebook/orca/attachments/MediaResource$Type;

    .line 36
    iput-object p1, p0, Lcom/facebook/orca/attachments/MediaResource;->b:Landroid/net/Uri;

    .line 37
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/orca/attachments/MediaResource;->b:Landroid/net/Uri;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/attachments/MediaResource$Type;->valueOf(Ljava/lang/String;)Lcom/facebook/orca/attachments/MediaResource$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/attachments/MediaResource;->a:Lcom/facebook/orca/attachments/MediaResource$Type;

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/orca/attachments/MediaResource;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static a(Landroid/net/Uri;)Lcom/facebook/orca/attachments/MediaResource;
    .locals 2
    .parameter

    .prologue
    .line 60
    new-instance v0, Lcom/facebook/orca/attachments/MediaResource;

    sget-object v1, Lcom/facebook/orca/attachments/MediaResource$Type;->PHOTO:Lcom/facebook/orca/attachments/MediaResource$Type;

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/attachments/MediaResource;-><init>(Landroid/net/Uri;Lcom/facebook/orca/attachments/MediaResource$Type;)V

    return-object v0
.end method

.method public static a(Ljava/io/File;)Lcom/facebook/orca/attachments/MediaResource;
    .locals 3
    .parameter

    .prologue
    .line 64
    new-instance v0, Lcom/facebook/orca/attachments/MediaResource;

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/attachments/MediaResource$Type;->PHOTO:Lcom/facebook/orca/attachments/MediaResource$Type;

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/attachments/MediaResource;-><init>(Landroid/net/Uri;Lcom/facebook/orca/attachments/MediaResource$Type;)V

    return-object v0
.end method

.method public static b(Landroid/net/Uri;)Lcom/facebook/orca/attachments/MediaResource;
    .locals 2
    .parameter

    .prologue
    .line 68
    new-instance v0, Lcom/facebook/orca/attachments/MediaResource;

    sget-object v1, Lcom/facebook/orca/attachments/MediaResource$Type;->VIDEO:Lcom/facebook/orca/attachments/MediaResource$Type;

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/attachments/MediaResource;-><init>(Landroid/net/Uri;Lcom/facebook/orca/attachments/MediaResource$Type;)V

    return-object v0
.end method

.method public static b(Ljava/io/File;)Lcom/facebook/orca/attachments/MediaResource;
    .locals 3
    .parameter

    .prologue
    .line 72
    new-instance v0, Lcom/facebook/orca/attachments/MediaResource;

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/attachments/MediaResource$Type;->VIDEO:Lcom/facebook/orca/attachments/MediaResource$Type;

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/attachments/MediaResource;-><init>(Landroid/net/Uri;Lcom/facebook/orca/attachments/MediaResource$Type;)V

    return-object v0
.end method

.method public static c(Landroid/net/Uri;)Lcom/facebook/orca/attachments/MediaResource;
    .locals 2
    .parameter

    .prologue
    .line 76
    new-instance v0, Lcom/facebook/orca/attachments/MediaResource;

    sget-object v1, Lcom/facebook/orca/attachments/MediaResource$Type;->AUDIO:Lcom/facebook/orca/attachments/MediaResource$Type;

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/attachments/MediaResource;-><init>(Landroid/net/Uri;Lcom/facebook/orca/attachments/MediaResource$Type;)V

    return-object v0
.end method

.method public static c(Ljava/io/File;)Lcom/facebook/orca/attachments/MediaResource;
    .locals 3
    .parameter

    .prologue
    .line 80
    new-instance v0, Lcom/facebook/orca/attachments/MediaResource;

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/attachments/MediaResource$Type;->AUDIO:Lcom/facebook/orca/attachments/MediaResource$Type;

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/attachments/MediaResource;-><init>(Landroid/net/Uri;Lcom/facebook/orca/attachments/MediaResource$Type;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/attachments/MediaResource$Type;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaResource;->a:Lcom/facebook/orca/attachments/MediaResource$Type;

    return-object v0
.end method

.method public final b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaResource;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 49
    if-ne p0, p1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v0

    .line 52
    :cond_1
    instance-of v2, p1, Lcom/facebook/orca/attachments/MediaResource;

    if-nez v2, :cond_2

    move v0, v1

    .line 53
    goto :goto_0

    .line 55
    :cond_2
    check-cast p1, Lcom/facebook/orca/attachments/MediaResource;

    .line 56
    invoke-virtual {p0}, Lcom/facebook/orca/attachments/MediaResource;->b()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/orca/attachments/MediaResource;->b()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/facebook/orca/attachments/MediaResource;->a()Lcom/facebook/orca/attachments/MediaResource$Type;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/orca/attachments/MediaResource;->a()Lcom/facebook/orca/attachments/MediaResource$Type;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaResource;->b:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 91
    iget-object v0, p0, Lcom/facebook/orca/attachments/MediaResource;->a:Lcom/facebook/orca/attachments/MediaResource$Type;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/MediaResource$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    return-void
.end method
