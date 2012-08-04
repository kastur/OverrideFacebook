.class Lcom/facebook/orca/photos/picking/PickMediaOperation$1;
.super Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Listener;
.source "PickMediaOperation.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/photos/picking/PickMediaOperation;


# direct methods
.method constructor <init>(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation$1;->a:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Result;)V
    .locals 2
    .parameter

    .prologue
    .line 125
    sget-object v0, Lcom/facebook/orca/photos/picking/PickMediaOperation$3;->a:[I

    invoke-virtual {p1}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Result;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 149
    :goto_0
    return-void

    .line 127
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation$1;->a:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-static {v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V

    goto :goto_0

    .line 130
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation$1;->a:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-static {v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->b(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V

    goto :goto_0

    .line 133
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation$1;->a:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-static {v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V

    goto :goto_0

    .line 136
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation$1;->a:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-static {v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->d(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V

    goto :goto_0

    .line 139
    :pswitch_4
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation$1;->a:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-static {v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->e(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V

    goto :goto_0

    .line 143
    :pswitch_5
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation$1;->a:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-static {v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->f(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V

    goto :goto_0

    .line 146
    :pswitch_6
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation$1;->a:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-static {v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->g(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
