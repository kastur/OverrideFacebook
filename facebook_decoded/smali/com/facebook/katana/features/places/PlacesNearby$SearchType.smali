.class public final enum Lcom/facebook/katana/features/places/PlacesNearby$SearchType;
.super Ljava/lang/Enum;
.source "PlacesNearby.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/features/places/PlacesNearby$SearchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

.field public static final enum CHECKIN:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

.field public static final enum PHOTO:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

.field public static final enum STATUS:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

.field public static final enum VIDEO:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 111
    new-instance v0, Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    const-string v1, "CHECKIN"

    const-string v2, "mobile_checkin"

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/katana/features/places/PlacesNearby$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/features/places/PlacesNearby$SearchType;->CHECKIN:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    .line 112
    new-instance v0, Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    const-string v1, "STATUS"

    const-string v2, "mobile_status"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/katana/features/places/PlacesNearby$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/features/places/PlacesNearby$SearchType;->STATUS:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    .line 113
    new-instance v0, Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    const-string v1, "PHOTO"

    const-string v2, "mobile_photo"

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/katana/features/places/PlacesNearby$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/features/places/PlacesNearby$SearchType;->PHOTO:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    .line 114
    new-instance v0, Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    const-string v1, "VIDEO"

    const-string v2, "mobile_video"

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/katana/features/places/PlacesNearby$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/features/places/PlacesNearby$SearchType;->VIDEO:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    .line 110
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    sget-object v1, Lcom/facebook/katana/features/places/PlacesNearby$SearchType;->CHECKIN:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/katana/features/places/PlacesNearby$SearchType;->STATUS:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/katana/features/places/PlacesNearby$SearchType;->PHOTO:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/katana/features/places/PlacesNearby$SearchType;->VIDEO:Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/katana/features/places/PlacesNearby$SearchType;->$VALUES:[Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 119
    iput-object p3, p0, Lcom/facebook/katana/features/places/PlacesNearby$SearchType;->name:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/features/places/PlacesNearby$SearchType;
    .locals 1
    .parameter

    .prologue
    .line 110
    const-class v0, Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/features/places/PlacesNearby$SearchType;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/facebook/katana/features/places/PlacesNearby$SearchType;->$VALUES:[Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    invoke-virtual {v0}, [Lcom/facebook/katana/features/places/PlacesNearby$SearchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/features/places/PlacesNearby$SearchType;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/facebook/katana/features/places/PlacesNearby$SearchType;->name:Ljava/lang/String;

    return-object v0
.end method
