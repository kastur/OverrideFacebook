.class public abstract Lcom/nineoldandroids/util/IntProperty;
.super Lcom/nineoldandroids/util/Property;
.source "IntProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nineoldandroids/util/Property",
        "<TT;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Integer;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/util/IntProperty;->a(Ljava/lang/Object;Ljava/lang/Integer;)V

    .line 44
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    check-cast p2, Ljava/lang/Integer;

    invoke-direct {p0, p1, p2}, Lcom/nineoldandroids/util/IntProperty;->a(Ljava/lang/Object;Ljava/lang/Integer;)V

    return-void
.end method
