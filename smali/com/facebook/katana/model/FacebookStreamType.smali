.class public final enum Lcom/facebook/katana/model/FacebookStreamType;
.super Ljava/lang/Enum;
.source "FacebookStreamType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/model/FacebookStreamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/model/FacebookStreamType;

.field public static final enum EVENT_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

.field public static final enum GROUP_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

.field public static final enum NEWSFEED_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

.field public static final enum PAGE_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

.field public static final enum PLACE_ACTIVITY_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

.field public static final enum PROFILE_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/facebook/katana/model/FacebookStreamType;

    const-string v1, "NEWSFEED_STREAM"

    invoke-direct {v0, v1, v3}, Lcom/facebook/katana/model/FacebookStreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/model/FacebookStreamType;->NEWSFEED_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    .line 5
    new-instance v0, Lcom/facebook/katana/model/FacebookStreamType;

    const-string v1, "PROFILE_WALL_STREAM"

    invoke-direct {v0, v1, v4}, Lcom/facebook/katana/model/FacebookStreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/model/FacebookStreamType;->PROFILE_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    .line 6
    new-instance v0, Lcom/facebook/katana/model/FacebookStreamType;

    const-string v1, "GROUP_WALL_STREAM"

    invoke-direct {v0, v1, v5}, Lcom/facebook/katana/model/FacebookStreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/model/FacebookStreamType;->GROUP_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    .line 7
    new-instance v0, Lcom/facebook/katana/model/FacebookStreamType;

    const-string v1, "PLACE_ACTIVITY_STREAM"

    invoke-direct {v0, v1, v6}, Lcom/facebook/katana/model/FacebookStreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/model/FacebookStreamType;->PLACE_ACTIVITY_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    .line 8
    new-instance v0, Lcom/facebook/katana/model/FacebookStreamType;

    const-string v1, "PAGE_WALL_STREAM"

    invoke-direct {v0, v1, v7}, Lcom/facebook/katana/model/FacebookStreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/model/FacebookStreamType;->PAGE_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    .line 9
    new-instance v0, Lcom/facebook/katana/model/FacebookStreamType;

    const-string v1, "EVENT_WALL_STREAM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/model/FacebookStreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/model/FacebookStreamType;->EVENT_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/facebook/katana/model/FacebookStreamType;

    sget-object v1, Lcom/facebook/katana/model/FacebookStreamType;->NEWSFEED_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/katana/model/FacebookStreamType;->PROFILE_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/katana/model/FacebookStreamType;->GROUP_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/katana/model/FacebookStreamType;->PLACE_ACTIVITY_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/katana/model/FacebookStreamType;->PAGE_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/katana/model/FacebookStreamType;->EVENT_WALL_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/model/FacebookStreamType;->$VALUES:[Lcom/facebook/katana/model/FacebookStreamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/model/FacebookStreamType;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/facebook/katana/model/FacebookStreamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookStreamType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/model/FacebookStreamType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/facebook/katana/model/FacebookStreamType;->$VALUES:[Lcom/facebook/katana/model/FacebookStreamType;

    invoke-virtual {v0}, [Lcom/facebook/katana/model/FacebookStreamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/model/FacebookStreamType;

    return-object v0
.end method
