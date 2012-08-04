.class Lcom/facebook/katana/activity/media/FocusManager$MainHandler;
.super Landroid/os/Handler;
.source "FocusManager.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/FocusManager;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/media/FocusManager;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/facebook/katana/activity/media/FocusManager$MainHandler;->a:Lcom/facebook/katana/activity/media/FocusManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/media/FocusManager;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/FocusManager$MainHandler;-><init>(Lcom/facebook/katana/activity/media/FocusManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 74
    :goto_0
    return-void

    .line 70
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/FocusManager$MainHandler;->a:Lcom/facebook/katana/activity/media/FocusManager;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/FocusManager;->a(Lcom/facebook/katana/activity/media/FocusManager;)V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
