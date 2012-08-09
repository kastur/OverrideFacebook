.class public final enum Ldifflib/DiffRow$Tag;
.super Ljava/lang/Enum;
.source "DiffRow.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldifflib/DiffRow$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldifflib/DiffRow$Tag;

.field public static final enum CHANGE:Ldifflib/DiffRow$Tag;

.field public static final enum DELETE:Ldifflib/DiffRow$Tag;

.field public static final enum EQUAL:Ldifflib/DiffRow$Tag;

.field public static final enum INSERT:Ldifflib/DiffRow$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Ldifflib/DiffRow$Tag;

    const-string v1, "INSERT"

    invoke-direct {v0, v1, v2}, Ldifflib/DiffRow$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldifflib/DiffRow$Tag;->INSERT:Ldifflib/DiffRow$Tag;

    new-instance v0, Ldifflib/DiffRow$Tag;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v3}, Ldifflib/DiffRow$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldifflib/DiffRow$Tag;->DELETE:Ldifflib/DiffRow$Tag;

    new-instance v0, Ldifflib/DiffRow$Tag;

    const-string v1, "CHANGE"

    invoke-direct {v0, v1, v4}, Ldifflib/DiffRow$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldifflib/DiffRow$Tag;->CHANGE:Ldifflib/DiffRow$Tag;

    new-instance v0, Ldifflib/DiffRow$Tag;

    const-string v1, "EQUAL"

    invoke-direct {v0, v1, v5}, Ldifflib/DiffRow$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldifflib/DiffRow$Tag;->EQUAL:Ldifflib/DiffRow$Tag;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Ldifflib/DiffRow$Tag;

    sget-object v1, Ldifflib/DiffRow$Tag;->INSERT:Ldifflib/DiffRow$Tag;

    aput-object v1, v0, v2

    sget-object v1, Ldifflib/DiffRow$Tag;->DELETE:Ldifflib/DiffRow$Tag;

    aput-object v1, v0, v3

    sget-object v1, Ldifflib/DiffRow$Tag;->CHANGE:Ldifflib/DiffRow$Tag;

    aput-object v1, v0, v4

    sget-object v1, Ldifflib/DiffRow$Tag;->EQUAL:Ldifflib/DiffRow$Tag;

    aput-object v1, v0, v5

    sput-object v0, Ldifflib/DiffRow$Tag;->$VALUES:[Ldifflib/DiffRow$Tag;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldifflib/DiffRow$Tag;
    .locals 1
    .parameter

    .prologue
    .line 35
    const-class v0, Ldifflib/DiffRow$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldifflib/DiffRow$Tag;

    return-object v0
.end method

.method public static values()[Ldifflib/DiffRow$Tag;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Ldifflib/DiffRow$Tag;->$VALUES:[Ldifflib/DiffRow$Tag;

    invoke-virtual {v0}, [Ldifflib/DiffRow$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldifflib/DiffRow$Tag;

    return-object v0
.end method
