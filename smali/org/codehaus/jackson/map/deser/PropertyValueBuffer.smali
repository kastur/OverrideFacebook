.class public final Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;
.super Ljava/lang/Object;
.source "PropertyValueBuffer.java"


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:I

.field private c:Lorg/codehaus/jackson/map/deser/PropertyValue;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p3, p0, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->b:I

    .line 44
    new-array v0, p3, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->a:[Ljava/lang/Object;

    .line 45
    return-void
.end method


# virtual methods
.method protected final a()Lorg/codehaus/jackson/map/deser/PropertyValue;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->c:Lorg/codehaus/jackson/map/deser/PropertyValue;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 86
    new-instance v0, Lorg/codehaus/jackson/map/deser/PropertyValue$Map;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->c:Lorg/codehaus/jackson/map/deser/PropertyValue;

    invoke-direct {v0, v1, p2, p1}, Lorg/codehaus/jackson/map/deser/PropertyValue$Map;-><init>(Lorg/codehaus/jackson/map/deser/PropertyValue;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->c:Lorg/codehaus/jackson/map/deser/PropertyValue;

    .line 87
    return-void
.end method

.method public final a(Lorg/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    new-instance v0, Lorg/codehaus/jackson/map/deser/PropertyValue$Any;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->c:Lorg/codehaus/jackson/map/deser/PropertyValue;

    invoke-direct {v0, v1, p3, p1, p2}, Lorg/codehaus/jackson/map/deser/PropertyValue$Any;-><init>(Lorg/codehaus/jackson/map/deser/PropertyValue;Ljava/lang/Object;Lorg/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->c:Lorg/codehaus/jackson/map/deser/PropertyValue;

    .line 83
    return-void
.end method

.method public final a(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 78
    new-instance v0, Lorg/codehaus/jackson/map/deser/PropertyValue$Regular;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->c:Lorg/codehaus/jackson/map/deser/PropertyValue;

    invoke-direct {v0, v1, p2, p1}, Lorg/codehaus/jackson/map/deser/PropertyValue$Regular;-><init>(Lorg/codehaus/jackson/map/deser/PropertyValue;Ljava/lang/Object;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->c:Lorg/codehaus/jackson/map/deser/PropertyValue;

    .line 79
    return-void
.end method

.method public final a(ILjava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->a:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 74
    iget v0, p0, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->b:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 54
    if-eqz p1, :cond_1

    .line 55
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->a:[Ljava/lang/Object;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 56
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->a:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 57
    aget-object v2, p1, v0

    .line 58
    if-eqz v2, :cond_0

    .line 59
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->a:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 55
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->a:[Ljava/lang/Object;

    return-object v0
.end method
