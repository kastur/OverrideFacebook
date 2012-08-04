.class public final enum Ldifflib/Delta$TYPE;
.super Ljava/lang/Enum;
.source "Delta.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldifflib/Delta$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldifflib/Delta$TYPE;

.field public static final enum CHANGE:Ldifflib/Delta$TYPE;

.field public static final enum DELETE:Ldifflib/Delta$TYPE;

.field public static final enum INSERT:Ldifflib/Delta$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Ldifflib/Delta$TYPE;

    const-string v1, "CHANGE"

    invoke-direct {v0, v1, v2}, Ldifflib/Delta$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldifflib/Delta$TYPE;->CHANGE:Ldifflib/Delta$TYPE;

    new-instance v0, Ldifflib/Delta$TYPE;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v3}, Ldifflib/Delta$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldifflib/Delta$TYPE;->DELETE:Ldifflib/Delta$TYPE;

    new-instance v0, Ldifflib/Delta$TYPE;

    const-string v1, "INSERT"

    invoke-direct {v0, v1, v4}, Ldifflib/Delta$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldifflib/Delta$TYPE;->INSERT:Ldifflib/Delta$TYPE;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Ldifflib/Delta$TYPE;

    sget-object v1, Ldifflib/Delta$TYPE;->CHANGE:Ldifflib/Delta$TYPE;

    aput-object v1, v0, v2

    sget-object v1, Ldifflib/Delta$TYPE;->DELETE:Ldifflib/Delta$TYPE;

    aput-object v1, v0, v3

    sget-object v1, Ldifflib/Delta$TYPE;->INSERT:Ldifflib/Delta$TYPE;

    aput-object v1, v0, v4

    sput-object v0, Ldifflib/Delta$TYPE;->$VALUES:[Ldifflib/Delta$TYPE;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldifflib/Delta$TYPE;
    .locals 1
    .parameter

    .prologue
    .line 29
    const-class v0, Ldifflib/Delta$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldifflib/Delta$TYPE;

    return-object v0
.end method

.method public static values()[Ldifflib/Delta$TYPE;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Ldifflib/Delta$TYPE;->$VALUES:[Ldifflib/Delta$TYPE;

    invoke-virtual {v0}, [Ldifflib/Delta$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldifflib/Delta$TYPE;

    return-object v0
.end method
